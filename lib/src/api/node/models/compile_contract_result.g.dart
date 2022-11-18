// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compile_contract_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompileContractResult _$CompileContractResultFromJson(
        Map<String, dynamic> json) =>
    CompileContractResult(
      version: json['version'] as bool?,
      name: json['name'] as String?,
      bytecode: json['bytecode'] as String?,
      bytecodeDebugPatch: json['bytecodeDebugPatch'] as String?,
      codeHash: json['codeHash'] as String?,
      codeHashDebug: json['codeHashDebug'] as String?,
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

Map<String, dynamic> _$CompileContractResultToJson(
    CompileContractResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('version', instance.version);
  writeNotNull('name', instance.name);
  writeNotNull('bytecode', instance.bytecode);
  writeNotNull('bytecodeDebugPatch', instance.bytecodeDebugPatch);
  writeNotNull('codeHash', instance.codeHash);
  writeNotNull('codeHashDebug', instance.codeHashDebug);
  writeNotNull('fields', instance.fields);
  writeNotNull('functions', instance.functions);
  writeNotNull('events', instance.events);
  writeNotNull('warnings', instance.warnings);
  return val;
}
