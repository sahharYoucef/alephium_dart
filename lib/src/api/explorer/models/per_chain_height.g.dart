// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'per_chain_height.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PerChainHeight _$PerChainHeightFromJson(Map<String, dynamic> json) =>
    PerChainHeight(
      value: json['value'] as int?,
      chainFrom: json['chainFrom'] as int?,
      chainTo: json['chainTo'] as int?,
      height: json['duration'] as int?,
    );

Map<String, dynamic> _$PerChainHeightToJson(PerChainHeight instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  writeNotNull('chainFrom', instance.chainFrom);
  writeNotNull('chainTo', instance.chainTo);
  writeNotNull('duration', instance.height);
  return val;
}
