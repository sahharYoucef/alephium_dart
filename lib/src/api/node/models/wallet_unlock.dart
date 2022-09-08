import 'package:json_annotation/json_annotation.dart';

part 'wallet_unlock.g.dart';

@JsonSerializable(includeIfNull: false)
class WalletUnlock {
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'mnemonicPassphrase')
  final bool? mnemonicPassphrase;

  WalletUnlock({
    this.password,
    this.mnemonicPassphrase,
  });

  factory WalletUnlock.fromJson(Map<String, dynamic> json) =>
      _$WalletUnlockFromJson(json);
  Map<String, dynamic> toJson() => _$WalletUnlockToJson(this);
}
