// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'per_chain_timed_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PerChainTimedCount _$PerChainTimedCountFromJson(Map<String, dynamic> json) =>
    PerChainTimedCount(
      timestamp: json['timestamp'] as int?,
      totalCountPerChain: (json['totalCountPerChain'] as List<dynamic>?)
          ?.map((e) => PerChainCount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PerChainTimedCountToJson(PerChainTimedCount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('timestamp', instance.timestamp);
  writeNotNull('totalCountPerChain', instance.totalCountPerChain);
  return val;
}
