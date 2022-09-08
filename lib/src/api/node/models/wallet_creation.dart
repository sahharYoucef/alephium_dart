import 'package:json_annotation/json_annotation.dart';

part 'wallet_creation.g.dart';

@JsonSerializable(includeIfNull: false)
class WalletCreation {
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'walletName')
  final String? walletName;
  @JsonKey(name: 'isMiner')
  final bool? isMiner;
  @JsonKey(name: 'mnemonicPassphrase')
  final String? mnemonicPassphrase;
  @JsonKey(name: 'mnemonicSize')
  final num? mnemonicSize;

  WalletCreation({
    this.password,
    this.walletName,
    this.isMiner,
    this.mnemonicPassphrase,
    this.mnemonicSize,
  });

  factory WalletCreation.fromJson(Map<String, dynamic> json) =>
      _$WalletCreationFromJson(json);

  Map<String, dynamic> toJson() => _$WalletCreationToJson(this);
}
