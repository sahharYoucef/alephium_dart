import 'package:alephium_dart/src/api/node/models/event_sig.dart';
import 'package:alephium_dart/src/api/node/models/fields_sig.dart';
import 'package:alephium_dart/src/api/node/models/function_sig.dart';
import 'package:json_annotation/json_annotation.dart';

part 'compile_contract_result.g.dart';

@JsonSerializable(includeIfNull: false)
class CompileContractResult {
  @JsonKey(name: 'version')
  final bool? version;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'bytecode')
  final String? bytecode;
  @JsonKey(name: 'bytecodeDebugPatch')
  final String? bytecodeDebugPatch;
  @JsonKey(name: 'codeHash')
  final String? codeHash;
  @JsonKey(name: 'codeHashDebug')
  final String? codeHashDebug;
  @JsonKey(name: 'fields')
  final FieldsSig? fields;
  @JsonKey(name: 'functions')
  final List<FunctionSig>? functions;
  @JsonKey(name: 'events')
  final List<EventSig>? events;
  @JsonKey(name: 'warnings')
  final List<String>? warnings;

  CompileContractResult({
    this.version,
    this.name,
    this.bytecode,
    this.bytecodeDebugPatch,
    this.codeHash,
    this.codeHashDebug,
    this.fields,
    this.functions,
    this.events,
    this.warnings,
  });

  factory CompileContractResult.fromJson(Map<String, dynamic> json) =>
      _$CompileContractResultFromJson(json);
  Map<String, dynamic> toJson() => _$CompileContractResultToJson(this);
}
