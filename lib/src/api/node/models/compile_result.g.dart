// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compile_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompileResult _$CompileResultFromJson(Map<String, dynamic> json) =>
    CompileResult(
      bytecode: json['bytecode'] as String?,
      codeHash: json['codeHash'] as String?,
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => FieldsSig.fromJson(e as Map<String, dynamic>))
          .toList(),
      functions: (json['functions'] as List<dynamic>?)
          ?.map((e) => FunctionSig.fromJson(e as Map<String, dynamic>))
          .toList(),
      events: (json['events'] as List<dynamic>?)
          ?.map((e) => EventSig.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompileResultToJson(CompileResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bytecode', instance.bytecode);
  writeNotNull('codeHash', instance.codeHash);
  writeNotNull('fields', instance.fields);
  writeNotNull('functions', instance.functions);
  writeNotNull('events', instance.events);
  return val;
}
