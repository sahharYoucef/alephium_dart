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
      isPublic: json['isPublic'] as String?,
      paramIsMutable: (json['paramIsMutable'] as List<dynamic>?)
          ?.map((e) => e as bool)
          .toList(),
      paramNames: (json['paramNames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      paramTypes: (json['paramTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      useAssetsInContract: json['useAssetsInContract'] as bool?,
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
  writeNotNull('useAssetsInContract', instance.useAssetsInContract);
  writeNotNull('isPublic', instance.isPublic);
  writeNotNull('argTypes', instance.argTypes);
  writeNotNull('returnTypes', instance.returnTypes);
  writeNotNull('paramTypes', instance.paramTypes);
  writeNotNull('paramIsMutable', instance.paramIsMutable);
  writeNotNull('paramNames', instance.paramNames);
  return val;
}
