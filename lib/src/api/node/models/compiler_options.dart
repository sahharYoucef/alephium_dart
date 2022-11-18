import 'package:json_annotation/json_annotation.dart';

part 'compiler_options.g.dart';

@JsonSerializable(includeIfNull: false)
class CompilerOptions {
  @JsonKey(name: 'ignoreUnusedConstantsWarnings')
  final bool? ignoreUnusedConstantsWarnings;
  @JsonKey(name: 'ignoreUnusedVariablesWarnings')
  final bool? ignoreUnusedVariablesWarnings;
  @JsonKey(name: 'ignoreUnusedFieldsWarnings')
  final bool? ignoreUnusedFieldsWarnings;
  @JsonKey(name: 'ignoreUnusedPrivateFunctionsWarnings')
  final bool? ignoreUnusedPrivateFunctionsWarnings;
  @JsonKey(name: 'ignoreReadonlyCheckWarnings')
  final bool? ignoreReadonlyCheckWarnings;
  @JsonKey(name: 'ignoreExternalCallCheckWarnings')
  final bool? ignoreExternalCallCheckWarnings;

  CompilerOptions({
    this.ignoreUnusedConstantsWarnings,
    this.ignoreUnusedVariablesWarnings,
    this.ignoreUnusedFieldsWarnings,
    this.ignoreUnusedPrivateFunctionsWarnings,
    this.ignoreReadonlyCheckWarnings,
    this.ignoreExternalCallCheckWarnings,
  });

  factory CompilerOptions.fromJson(Map<String, dynamic> json) =>
      _$CompilerOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$CompilerOptionsToJson(this);
}
