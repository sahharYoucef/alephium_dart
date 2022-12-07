// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compile_project_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompileProjectResult _$CompileProjectResultFromJson(
        Map<String, dynamic> json) =>
    CompileProjectResult(
      contracts: (json['contracts'] as List<dynamic>?)
          ?.map(
              (e) => CompileContractResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      scripts: (json['scripts'] as List<dynamic>?)
          ?.map((e) => CompileScriptResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompileProjectResultToJson(
    CompileProjectResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('contracts', instance.contracts);
  writeNotNull('scripts', instance.scripts);
  return val;
}
