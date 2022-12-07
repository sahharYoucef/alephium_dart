// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_back_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogBackValue _$LogBackValueFromJson(Map<String, dynamic> json) => LogBackValue(
      name: json['name'] as String?,
      level: json['level'] as String?,
    );

Map<String, dynamic> _$LogBackValueToJson(LogBackValue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('level', instance.level);
  return val;
}
