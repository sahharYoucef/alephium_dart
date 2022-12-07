// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timed_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimedCount _$TimedCountFromJson(Map<String, dynamic> json) => TimedCount(
      timestamp: json['timestamp'] as int?,
      totalCountAllChains: json['totalCountAllChains'] as num?,
    );

Map<String, dynamic> _$TimedCountToJson(TimedCount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('timestamp', instance.timestamp);
  writeNotNull('totalCountAllChains', instance.totalCountAllChains);
  return val;
}
