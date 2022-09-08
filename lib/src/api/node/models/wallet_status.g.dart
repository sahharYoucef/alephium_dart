// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletStatus _$WalletStatusFromJson(Map<String, dynamic> json) => WalletStatus(
      walletName: json['walletName'] as String?,
      locked: json['locked'] as bool?,
    );

Map<String, dynamic> _$WalletStatusToJson(WalletStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('walletName', instance.walletName);
  writeNotNull('locked', instance.locked);
  return val;
}
