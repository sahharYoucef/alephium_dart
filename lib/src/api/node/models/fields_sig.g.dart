// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fields_sig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FieldsSig _$FieldsSigFromJson(Map<String, dynamic> json) => FieldsSig(
      signature: json['signature'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$FieldsSigToJson(FieldsSig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('signature', instance.signature);
  writeNotNull('types', instance.types);
  return val;
}
