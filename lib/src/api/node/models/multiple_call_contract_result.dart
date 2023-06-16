import 'package:alephium_dart/src/api/node/models/call_contract_result.dart';
import 'package:json_annotation/json_annotation.dart';

part 'multiple_call_contract_result.g.dart';

@JsonSerializable(includeIfNull: false)
class MultipleCallContractResult {
  @JsonKey(name: 'results', defaultValue: [])
  final List<CallContractResult> results;

  MultipleCallContractResult({
    this.results = const [],
  });

  factory MultipleCallContractResult.fromJson(Map<String, dynamic> json) =>
      _$MultipleCallContractResultFromJson(json);
  Map<String, dynamic> toJson() => _$MultipleCallContractResultToJson(this);
}
