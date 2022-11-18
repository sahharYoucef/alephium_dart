// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compile_script_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompileScriptResult _$CompileScriptResultFromJson(Map<String, dynamic> json) =>
    CompileScriptResult(
      version: json['version'] as bool?,
      name: json['name'] as String?,
      bytecodeTemplate: json['bytecodeTemplate'] as String?,
      bytecodeDebugPatch: json['bytecodeDebugPatch'] as String?,
      fields: json['fields'] == null
          ? null
          : FieldsSig.fromJson(json['fields'] as Map<String, dynamic>),
      functions: (json['functions'] as List<dynamic>?)
          ?.map((e) => FunctionSig.fromJson(e as Map<String, dynamic>))
          .toList(),
      events: (json['events'] as List<dynamic>?)
          ?.map((e) => EventSig.fromJson(e as Map<String, dynamic>))
          .toList(),
      warnings: (json['warnings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CompileScriptResultToJson(CompileScriptResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('version', instance.version);
  writeNotNull('name', instance.name);
  writeNotNull('bytecodeTemplate', instance.bytecodeTemplate);
  writeNotNull('bytecodeDebugPatch', instance.bytecodeDebugPatch);
  writeNotNull('fields', instance.fields);
  writeNotNull('functions', instance.functions);
  writeNotNull('events', instance.events);
  writeNotNull('warnings', instance.warnings);
  return val;
}
