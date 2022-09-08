import 'package:json_annotation/json_annotation.dart';

part 'wallet_creation_result.g.dart';

@JsonSerializable(includeIfNull: false)
class WalletCreationResult {
  @JsonKey(name: 'walletName')
  final String? walletName;
  @JsonKey(name: 'mnemonic')
  final String? mnemonic;

  WalletCreationResult({
    this.walletName,
    this.mnemonic,
  });

  factory WalletCreationResult.fromJson(Map<String, dynamic> json) =>
      _$WalletCreationResultFromJson(json);
  Map<String, dynamic> toJson() => _$WalletCreationResultToJson(this);
}
