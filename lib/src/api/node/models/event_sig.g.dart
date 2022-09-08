// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_sig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventSig _$EventSigFromJson(Map<String, dynamic> json) => EventSig(
      name: json['name'] as String?,
      signature: json['signature'] as String?,
      fieldTypes: (json['fieldTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$EventSigToJson(EventSig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('signature', instance.signature);
  writeNotNull('fieldTypes', instance.fieldTypes);
  return val;
}
