// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'val.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Val _$ValFromJson(Map<String, dynamic> json) => Val(
      value: json['value'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$ValToJson(Val instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  writeNotNull('type', instance.type);
  return val;
}
