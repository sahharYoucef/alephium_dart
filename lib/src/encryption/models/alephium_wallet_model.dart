import 'package:alephium_dart/src/encryption/models/alephium_address_model.dart';

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
