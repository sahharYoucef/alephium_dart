// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mem_pooled.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemPooled _$MemPooledFromJson(Map<String, dynamic> json) => MemPooled(
      type: json['type'] as String?,
    );

Map<String, dynamic> _$MemPooledToJson(MemPooled instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  return val;
}
