import 'dart:convert';
import 'dart:typed_data';

import 'package:alephium_dart/src/encryption/models/alephium_address_model.dart';
import 'package:alephium_dart/src/encryption/models/alephium_wallet_model.dart';
import 'package:bip39/bip39.dart' as bip39;
import 'package:bip32/bip32.dart' as bip32;
import 'package:bs58/bs58.dart';
import 'package:convert/convert.dart';
import '../utils/blake2b.dart';
import '../utils/constants.dart';
import '../utils/address.dart';
import '../utils/password_crypto.dart';
import 'package:ecdsa/ecdsa.dart' as ecdsa;
import 'package:elliptic/elliptic.dart' as ec;

class WalletService {
  static AlephiumAddress deriveNewAddressData(String seed, int forGroup,
      {int? index, List<int> skipAddressIndexes = const <int>[]}) {
    var _seed = Uint8List.fromList(hex.decode(seed));
    if (forGroup >= totalNumberOfGroups || forGroup < 0) {
      throw Exception("Invalid group number");
    }
    var initialAddressIndex = index ?? 0;
    var nextAddressIndex = skipAddressIndexes.contains(initialAddressIndex)
        ? _findNextAvailableAddressIndex(
            initialAddressIndex, skipAddressIndexes)
        : initialAddressIndex;
    var newAddressData = _deriveAddressAndKeys(_seed, index: nextAddressIndex);
    while (AddressUtils.addressToGroup(
            newAddressData.address, totalNumberOfGroups) !=
        forGroup) {
      nextAddressIndex = _findNextAvailableAddressIndex(
        newAddressData.index,
        skipAddressIndexes,
      );
      newAddressData = _deriveAddressAndKeys(
        _seed,
        index: nextAddressIndex,
        group: forGroup,
      );
    }
    return newAddressData;
  }

  static int _findNextAvailableAddressIndex(
    int startIndex,
    List<int> skipIndexes,
  ) {
    var nextAvailableAddressIndex = startIndex;

    do {
      nextAvailableAddressIndex += 1;
    } while (skipIndexes.contains(nextAvailableAddressIndex));

    return nextAvailableAddressIndex;
  }

  static AlephiumWallet openWallet(String password, String encryptedWallet) {
    var dataDecrypted = PasswordCrypto.decrypt(password, encryptedWallet);
    var data = json.decode(dataDecrypted);
    return _getWalletFromMnemonic(data["mnemonic"]);
  }

  static String encryptWallet(AlephiumWallet wallet, String password) {
    return PasswordCrypto.encrypt(
        password,
        json.encode({
          "mnemonic": wallet.mnemonic,
        }));
  }

  static AlephiumWallet importWallet(String mnemonic, String passphrase) {
    var isValid = bip39.validateMnemonic(mnemonic);
    if (!isValid) {
      throw Exception('Invalid mnemonic');
    }
    return _getWalletFromMnemonic(mnemonic, passphrase: passphrase);
  }

  static AlephiumWallet generateWallet(String passphrase) {
    var mnemonic = bip39.generateMnemonic(strength: 256);
    return _getWalletFromMnemonic(mnemonic, passphrase: passphrase);
  }

  static AlephiumWallet _getWalletFromMnemonic(String mnemonic,
      {String passphrase = ""}) {
    var seed = bip39.mnemonicToSeed(mnemonic, passphrase: passphrase);
    return _getWalletFromSeed(seed, mnemonic: mnemonic, passphrase: passphrase);
  }

  static AlephiumWallet _getWalletFromSeed(Uint8List seed,
      {String mnemonic = "", String passphrase = ""}) {
    AlephiumAddress addressData =
        _deriveAddressAndKeys(seed, mnemonic: mnemonic, passphrase: passphrase);

    var wallet = AlephiumWallet(
      addresses: [addressData],
      mnemonic: mnemonic,
      passphrase: addressData.passphrase,
      seed: hex.encode(seed),
    );
    return wallet;
  }

  static AlephiumAddress _deriveAddressAndKeys(Uint8List seed,
      {int index = 0,
      int group = 0,
      String mnemonic = "",
      String passphrase = ""}) {
    var masterKey = bip32.BIP32.fromSeed(
      Uint8List.fromList(seed),
    );

    String path = _getPath(index);
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

  static String addressFromPublicKey(String publicKey) {
    var publicKeyUint8List = Uint8List.fromList(hex.decode(publicKey));
    var blake2b = Blake2b(
      input: publicKeyUint8List,
      key: null,
      outLen: 32,
    );
    Uint8List type = Uint8List.fromList([0]);
    var bytes = Uint8List.fromList([
      ...type,
      ...blake2b.hash,
    ]);
    var address = base58.encode(bytes);
    return address;
  }

  static String _getPath([int index = 0]) {
    if ((index < 0 || index.toString().contains('e'))) {
      throw Exception('Invalid address index path level');
    }
    const coinType = "1234";
    var path = "m/44'/$coinType'/0'/0/$index";
    return path;
  }

  static String signTransaction(String txHash, String privetKey) {
    var curve = ec.getSecp256k1();
    var hash = List<int>.generate(txHash.length ~/ 2,
        (i) => int.parse(txHash.substring(i * 2, i * 2 + 2), radix: 16));
    ec.PrivateKey key = ec.PrivateKey.fromHex(curve, privetKey);
    var signature = ecdsa.ethereumSign(key, hash);
    var eSignature = _signatureEncode(curve, signature);
    return eSignature;
  }

  static String _signatureEncode(ec.Curve curve, ecdsa.Signature signature) {
    var sNormalized = signature.S;
    if (signature.S.compareTo(curve.n) >= 1) {
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

  static Uint8List _bigIntToUint8List(BigInt bigInt) =>
      _bigIntToByteData(bigInt).buffer.asUint8List();

  static ByteData _bigIntToByteData(BigInt bigInt) {
    final data = ByteData((bigInt.bitLength / 8).ceil());
    var _bigInt = bigInt;

    for (var i = 1; i <= data.lengthInBytes; i++) {
      data.setUint8(data.lengthInBytes - i, _bigInt.toUnsigned(8).toInt());
      _bigInt = _bigInt >> 8;
    }

    return data;
  }
}
