import 'dart:convert';
import 'dart:typed_data';

import 'package:bip39/bip39.dart' as bip39;
import 'package:bip32/bip32.dart' as bip32;
import 'package:bs58/bs58.dart';
import 'package:convert/convert.dart';
import '../base_wallet_service.dart';
import '../utils/blake2b.dart';
import '../utils/constants.dart';
import '../utils/address.dart';
import '../utils/password_crypto.dart';
import 'package:ecdsa/ecdsa.dart' as ecdsa;
import 'package:elliptic/elliptic.dart' as ec;

class AlephiumAddress {
  final String address;
  final String privateKey;
  final String publicKey;
  final String passphrase;
  final int index;
  final int group;

  AlephiumAddress({
    required this.privateKey,
    required this.publicKey,
    required this.passphrase,
    required this.address,
    required this.index,
    required this.group,
  });
}

class AlephiumWallet {
  final String mnemonic;
  final String seed;
  final String passphrase;

  final List<AlephiumAddress> addresses;

  AlephiumWallet({
    required this.passphrase,
    required this.mnemonic,
    required this.seed,
    this.addresses = const [],
  });
}

class WalletService extends BaseWalletService {
  WalletService();

  AlephiumAddress deriveNewAddressData(String seed, int forGroup,
      {int? index, List<int> skipAddressIndexes = const <int>[]}) {
    var _seed = Uint8List.fromList(hex.decode(seed));
    if (forGroup >= TOTAL_NUMBER_OF_GROUPS || forGroup < 0) {
      throw Exception("Invalid group number");
    }
    var initialAddressIndex = index ?? 0;
    var nextAddressIndex = skipAddressIndexes.contains(initialAddressIndex)
        ? findNextAvailableAddressIndex(initialAddressIndex, skipAddressIndexes)
        : initialAddressIndex;
    var newAddressData = deriveAddressAndKeys(_seed, index: nextAddressIndex);
    while (AddressUtils.addressToGroup(
            newAddressData.address, TOTAL_NUMBER_OF_GROUPS) !=
        forGroup) {
      nextAddressIndex = findNextAvailableAddressIndex(
        newAddressData.index,
        skipAddressIndexes,
      );
      print("nextAddressIndex : $nextAddressIndex");
      newAddressData = deriveAddressAndKeys(
        _seed,
        index: nextAddressIndex,
        group: forGroup,
      );
    }
    return newAddressData;
  }

  int findNextAvailableAddressIndex(
    int startIndex,
    List<int> skipIndexes,
  ) {
    var nextAvailableAddressIndex = startIndex;

    do {
      nextAvailableAddressIndex += 1;
    } while (skipIndexes.contains(nextAvailableAddressIndex));

    return nextAvailableAddressIndex;
  }

  AlephiumWallet openWallet(String password, String encryptedWallet) {
    var dataDecrypted = PasswordCrypto.decrypt(password, encryptedWallet);
    var data = json.decode(dataDecrypted);
    return getWalletFromMnemonic(data["mnemonic"]);
  }

  String encryptWallet(AlephiumWallet wallet, String password) {
    return PasswordCrypto.encrypt(
        password,
        json.encode({
          "mnemonic": wallet.mnemonic,
        }));
  }

  @override
  AlephiumWallet importWallet(String mnemonic, String passphrase) {
    var isValid = bip39.validateMnemonic(mnemonic);
    if (!isValid) {
      throw Exception('Invalid mnemonic');
    }
    return getWalletFromMnemonic(mnemonic, passphrase: passphrase);
  }

  @override
  AlephiumWallet generateWallet(String passphrase) {
    var mnemonic = bip39.generateMnemonic(strength: 256);
    return getWalletFromMnemonic(mnemonic, passphrase: passphrase);
  }

  @override
  AlephiumWallet getWalletFromMnemonic(String mnemonic,
      {String passphrase = ""}) {
    var seed = bip39.mnemonicToSeed(mnemonic, passphrase: passphrase);
    return getWalletFromSeed(seed, mnemonic: mnemonic, passphrase: passphrase);
  }

  @override
  AlephiumWallet getWalletFromSeed(Uint8List seed,
      {String mnemonic = "", String passphrase = ""}) {
    AlephiumAddress addressData =
        deriveAddressAndKeys(seed, mnemonic: mnemonic, passphrase: passphrase);
    if (addressData.address == null) {
      throw Exception('Invalid address');
    }

    var wallet = AlephiumWallet(
      addresses: [addressData],
      mnemonic: mnemonic,
      passphrase: addressData.passphrase,
      seed: hex.encode(seed),
    );
    return wallet;
  }

  AlephiumAddress deriveAddressAndKeys(Uint8List seed,
      {int index = 0,
      int group = 0,
      String mnemonic = "",
      String passphrase = ""}) {
    var masterKey = bip32.BIP32.fromSeed(
      Uint8List.fromList(seed),
    );

    String path = getPath(index);
    var keyPair = masterKey.derivePath(path);
    if (keyPair.privateKey == null) {
      throw Exception("No private key found");
    }
    var publicKey = keyPair.publicKey;
    var privateKey = keyPair.privateKey;
    var blake2b = Blake2b(
      input: publicKey,
      key: null,
      outLen: 32,
    );
    Uint8List type = Uint8List.fromList([0]);
    var bytes = Uint8List.fromList([
      ...type,
      ...blake2b.hash,
    ]);
    var address = base58.encode(bytes);
    return AlephiumAddress(
      group: group,
      address: address,
      passphrase: passphrase,
      privateKey: hex.encode(privateKey!),
      publicKey: hex.encode(publicKey),
      index: index,
    );
  }

  String getPath([int index = 0]) {
    if ((index < 0 || index.toString().contains('e'))) {
      throw Exception('Invalid address index path level');
    }
    const coinType = "1234";
    var path = "m/44'/$coinType'/0'/0/$index";
    return path;
  }

  String signTransaction(String txHash, String privetKey) {
    var curve = ec.getSecp256k1();
    var hash = List<int>.generate(txHash.length ~/ 2,
        (i) => int.parse(txHash.substring(i * 2, i * 2 + 2), radix: 16));
    ec.PrivateKey key = ec.PrivateKey.fromHex(curve, privetKey);
    var signature = ecdsa.ethereumSign(key, hash);
    var eSignature = _signatureEncode(curve, signature);
    return eSignature;
  }

  String _signatureEncode(ec.Curve curve, ecdsa.Signature signature) {
    var sNormalized = signature.S;
    if (curve.n != null && signature.S.compareTo(curve.n) >= 1) {
      sNormalized = curve.n - signature.S;
    }
    var r = _bigIntToUint8List(signature.R)
        .map((i) => int.parse(i.toRadixString(2).padLeft(8, '0'), radix: 2))
        .toList();
    var s = _bigIntToUint8List(sNormalized)
        .map((i) => int.parse(i.toRadixString(2).padLeft(8, '0'), radix: 2))
        .toList();
    var xs = Uint8List(r.length + s.length);
    xs.setAll(0, r);
    xs.setAll(r.length, s);

    return hex.encode(xs);
  }

  Uint8List _bigIntToUint8List(BigInt bigInt) =>
      _bigIntToByteData(bigInt).buffer.asUint8List();

  ByteData _bigIntToByteData(BigInt bigInt) {
    final data = ByteData((bigInt.bitLength / 8).ceil());
    var _bigInt = bigInt;

    for (var i = 1; i <= data.lengthInBytes; i++) {
      data.setUint8(data.lengthInBytes - i, _bigInt.toUnsigned(8).toInt());
      _bigInt = _bigInt >> 8;
    }

    return data;
  }
}
