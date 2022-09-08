import 'package:json_annotation/json_annotation.dart';

import 'event_sig.dart';
import 'fields_sig.dart';
import 'function_sig.dart';

part 'compile_result.g.dart';

@JsonSerializable(includeIfNull: false)
class CompileResult {
  @JsonKey(name: 'bytecode')
  final String? bytecode;
  @JsonKey(name: 'codeHash')
  final String? codeHash;
  @JsonKey(name: 'fields')
  final List<FieldsSig>? fields;
  @JsonKey(name: 'functions')
  final List<FunctionSig>? functions;
  @JsonKey(name: 'events')
  final List<EventSig>? events;

  CompileResult({
    this.bytecode,
    this.codeHash,
    this.fields,
    this.functions,
    this.events,
  });

  factory CompileResult.fromJson(Map<String, dynamic> json) =>
      _$CompileResultFromJson(json);

  Map<String, dynamic> toJson() => _$CompileResultToJson(this);
}
