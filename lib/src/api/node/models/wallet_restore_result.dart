import 'package:json_annotation/json_annotation.dart';

part 'wallet_restore_result.g.dart';

@JsonSerializable(includeIfNull: false)
class WalletRestoreResult {
  @JsonKey(name: 'walletName')
  final String? walletName;

  WalletRestoreResult({
    this.walletName,
  });

  factory WalletRestoreResult.fromJson(Map<String, dynamic> json) =>
      _$WalletRestoreResultFromJson(json);
  Map<String, dynamic> toJson() => _$WalletRestoreResultToJson(this);
}
