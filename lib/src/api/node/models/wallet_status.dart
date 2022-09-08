import 'package:json_annotation/json_annotation.dart';

part 'wallet_status.g.dart';

@JsonSerializable(includeIfNull: false)
class WalletStatus {
  @JsonKey(name: 'walletName')
  final String? walletName;
  @JsonKey(name: 'locked')
  final bool? locked;

  WalletStatus({
    this.walletName,
    this.locked,
  });

  factory WalletStatus.fromJson(Map<String, dynamic> json) =>
      _$WalletStatusFromJson(json);
  Map<String, dynamic> toJson() => _$WalletStatusToJson(this);
}
