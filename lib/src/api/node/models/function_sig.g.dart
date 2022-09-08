// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function_sig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FunctionSig _$FunctionSigFromJson(Map<String, dynamic> json) => FunctionSig(
      name: json['name'] as String?,
      signature: json['signature'] as String?,
      argTypes: (json['argTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      returnTypes: (json['returnTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$FunctionSigToJson(FunctionSig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('signature', instance.signature);
  writeNotNull('argTypes', instance.argTypes);
  writeNotNull('returnTypes', instance.returnTypes);
  return val;
}
