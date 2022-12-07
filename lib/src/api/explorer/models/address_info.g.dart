// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExplorerAddressInfo _$ExplorerAddressInfoFromJson(Map<String, dynamic> json) =>
    ExplorerAddressInfo(
      balance: fromJsonStringToBigInt(json['balance'] as String?),
      lockedBalance: fromJsonStringToBigInt(json['lockedBalance'] as String?),
      txNumber: json['txNumber'] as int?,
    );

Map<String, dynamic> _$ExplorerAddressInfoToJson(ExplorerAddressInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('balance', toJsonBigIntToString(instance.balance));
  writeNotNull('lockedBalance', toJsonBigIntToString(instance.lockedBalance));
  writeNotNull('txNumber', instance.txNumber);
  return val;
}
