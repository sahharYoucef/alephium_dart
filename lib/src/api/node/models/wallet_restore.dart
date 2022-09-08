import 'package:json_annotation/json_annotation.dart';

part 'wallet_restore.g.dart';

@JsonSerializable(includeIfNull: false)
class WalletRestore {
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'walletName')
  final String? walletName;
  @JsonKey(name: 'isMiner')
  final bool? isMiner;
  @JsonKey(name: 'mnemonicPassphrase')
  final String? mnemonicPassphrase;
  @JsonKey(name: 'mnemonic')
  final num? mnemonic;

  WalletRestore({
    this.password,
    this.walletName,
    this.isMiner,
    this.mnemonicPassphrase,
    this.mnemonic,
  });

  factory WalletRestore.fromJson(Map<String, dynamic> json) =>
      _$WalletRestoreFromJson(json);

  Map<String, dynamic> toJson() => _$WalletRestoreToJson(this);
}
