import 'package:alephium_dart/src/api/node/models/compile_contract_result.dart';
import 'package:alephium_dart/src/api/node/models/compile_script_result.dart';
import 'package:json_annotation/json_annotation.dart';

part 'compile_project_result.g.dart';

@JsonSerializable(includeIfNull: false)
class CompileProjectResult {
  @JsonKey(name: 'contracts')
  final List<CompileContractResult>? contracts;
  @JsonKey(name: 'scripts')
  final List<CompileScriptResult>? scripts;

  CompileProjectResult({
    this.contracts,
    this.scripts,
  });

  factory CompileProjectResult.fromJson(Map<String, dynamic> json) =>
      _$CompileProjectResultFromJson(json);
  Map<String, dynamic> toJson() => _$CompileProjectResultToJson(this);
}
