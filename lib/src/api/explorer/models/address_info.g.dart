// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExplorerAddressInfo _$ExplorerAddressInfoFromJson(Map<String, dynamic> json) =>
    ExplorerAddressInfo(
      balance: json['balance'] as String?,
      lockedBalance: json['lockedBalance'] as String?,
      txNumber: json['txNumber'] as int?,
    );

Map<String, dynamic> _$ExplorerAddressInfoToJson(ExplorerAddressInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('balance', instance.balance);
  writeNotNull('lockedBalance', instance.lockedBalance);
  writeNotNull('txNumber', instance.txNumber);
  return val;
}
