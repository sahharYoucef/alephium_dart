// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'script.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Script _$ScriptFromJson(Map<String, dynamic> json) => Script(
      code: json['code'] as String?,
      compilerOptions: json['compilerOptions'] == null
          ? null
          : CompilerOptions.fromJson(
              json['compilerOptions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScriptToJson(Script instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('compilerOptions', instance.compilerOptions);
  return val;
}
