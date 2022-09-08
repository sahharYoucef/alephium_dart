// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sign _$SignFromJson(Map<String, dynamic> json) => Sign(
      data: json['data'] as String?,
    );

Map<String, dynamic> _$SignToJson(Sign instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  return val;
}
