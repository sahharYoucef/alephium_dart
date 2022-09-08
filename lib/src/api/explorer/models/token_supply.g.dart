// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_supply.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenSupply _$TokenSupplyFromJson(Map<String, dynamic> json) => TokenSupply(
      timestamp: json['timestamp'] as int?,
      total: json['total'] as String?,
      circulating: json['circulating'] as String?,
      reserved: json['reserved'] as String?,
      locked: json['locked'] as String?,
      maximum: json['maximum'] as String?,
    );

Map<String, dynamic> _$TokenSupplyToJson(TokenSupply instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('timestamp', instance.timestamp);
  writeNotNull('total', instance.total);
  writeNotNull('circulating', instance.circulating);
  writeNotNull('reserved', instance.reserved);
  writeNotNull('locked', instance.locked);
  writeNotNull('maximum', instance.maximum);
  return val;
}
