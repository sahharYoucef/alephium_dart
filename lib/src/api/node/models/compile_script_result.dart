import 'package:alephium_dart/src/api/node/models/event_sig.dart';
import 'package:alephium_dart/src/api/node/models/fields_sig.dart';
import 'package:alephium_dart/src/api/node/models/function_sig.dart';
import 'package:json_annotation/json_annotation.dart';

part 'compile_script_result.g.dart';

@JsonSerializable(includeIfNull: false)
class CompileScriptResult {
  @JsonKey(name: 'version')
  final bool? version;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'bytecodeTemplate')
  final String? bytecodeTemplate;
  @JsonKey(name: 'bytecodeDebugPatch')
  final String? bytecodeDebugPatch;
  @JsonKey(name: 'fields')
  final FieldsSig? fields;
  @JsonKey(name: 'functions')
  final List<FunctionSig>? functions;
  @JsonKey(name: 'events')
  final List<EventSig>? events;
  @JsonKey(name: 'warnings')
  final List<String>? warnings;

  CompileScriptResult({
    this.version,
    this.name,
    this.bytecodeTemplate,
    this.bytecodeDebugPatch,
    this.fields,
    this.functions,
    this.events,
    this.warnings,
  });

  factory CompileScriptResult.fromJson(Map<String, dynamic> json) =>
      _$CompileScriptResultFromJson(json);
  Map<String, dynamic> toJson() => _$CompileScriptResultToJson(this);
}
