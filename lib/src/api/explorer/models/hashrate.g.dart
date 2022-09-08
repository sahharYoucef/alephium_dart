// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hashrate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hashrate _$HashrateFromJson(Map<String, dynamic> json) => Hashrate(
      hashrate: json['hashrate'] as String?,
      value: json['value'] as String?,
      timestamp: json['timestamp'] as int?,
    );

Map<String, dynamic> _$HashrateToJson(Hashrate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hashrate', instance.hashrate);
  writeNotNull('value', instance.value);
  writeNotNull('timestamp', instance.timestamp);
  return val;
}
