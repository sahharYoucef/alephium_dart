// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compiler_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompilerOptions _$CompilerOptionsFromJson(Map<String, dynamic> json) =>
    CompilerOptions(
      ignoreUnusedConstantsWarnings:
          json['ignoreUnusedConstantsWarnings'] as bool?,
      ignoreUnusedVariablesWarnings:
          json['ignoreUnusedVariablesWarnings'] as bool?,
      ignoreUnusedFieldsWarnings: json['ignoreUnusedFieldsWarnings'] as bool?,
      ignoreUnusedPrivateFunctionsWarnings:
          json['ignoreUnusedPrivateFunctionsWarnings'] as bool?,
      ignoreReadonlyCheckWarnings: json['ignoreReadonlyCheckWarnings'] as bool?,
      ignoreExternalCallCheckWarnings:
          json['ignoreExternalCallCheckWarnings'] as bool?,
    );

Map<String, dynamic> _$CompilerOptionsToJson(CompilerOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'ignoreUnusedConstantsWarnings', instance.ignoreUnusedConstantsWarnings);
  writeNotNull(
      'ignoreUnusedVariablesWarnings', instance.ignoreUnusedVariablesWarnings);
  writeNotNull(
      'ignoreUnusedFieldsWarnings', instance.ignoreUnusedFieldsWarnings);
  writeNotNull('ignoreUnusedPrivateFunctionsWarnings',
      instance.ignoreUnusedPrivateFunctionsWarnings);
  writeNotNull(
      'ignoreReadonlyCheckWarnings', instance.ignoreReadonlyCheckWarnings);
  writeNotNull('ignoreExternalCallCheckWarnings',
      instance.ignoreExternalCallCheckWarnings);
  return val;
}
