// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_restore_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletRestoreResult _$WalletRestoreResultFromJson(Map<String, dynamic> json) =>
    WalletRestoreResult(
      walletName: json['walletName'] as String?,
    );

Map<String, dynamic> _$WalletRestoreResultToJson(WalletRestoreResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('walletName', instance.walletName);
  return val;
}
