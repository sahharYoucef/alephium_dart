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
