// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'per_chain_duration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PerChainDuration _$PerChainDurationFromJson(Map<String, dynamic> json) =>
    PerChainDuration(
      value: json['value'] as int?,
      chainFrom: json['chainFrom'] as int?,
      chainTo: json['chainTo'] as int?,
      duration: json['duration'] as int?,
    );

Map<String, dynamic> _$PerChainDurationToJson(PerChainDuration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  writeNotNull('chainFrom', instance.chainFrom);
  writeNotNull('chainTo', instance.chainTo);
  writeNotNull('duration', instance.duration);
  return val;
}
