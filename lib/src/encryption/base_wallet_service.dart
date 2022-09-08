import 'dart:typed_data';

import 'package:alephium_client/src/encryption/service/wallet.dart';

abstract class BaseWalletService {
  AlephiumWallet generateWallet(String passphrase);
  AlephiumWallet importWallet(String mnemonic, String passphrase);
  AlephiumWallet getWalletFromMnemonic(String mnemonic,
      {String passphrase = ""});
  AlephiumWallet getWalletFromSeed(Uint8List seed,
      {String mnemonic = "", String passphrase = ""});
}
