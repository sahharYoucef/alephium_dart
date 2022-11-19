// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'per_chain_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PerChainCount _$PerChainCountFromJson(Map<String, dynamic> json) =>
    PerChainCount(
      count: json['count'] as num?,
      chainFrom: json['chainFrom'] as num?,
      chainTo: json['chainTo'] as num?,
    );

Map<String, dynamic> _$PerChainCountToJson(PerChainCount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('chainFrom', instance.chainFrom);
  writeNotNull('chainTo', instance.chainTo);
  return val;
}
