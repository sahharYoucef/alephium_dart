import 'package:json_annotation/json_annotation.dart';

import 'contract_state.dart';
import 'event.dart';
import 'output.dart';

part 'test_contract_result.g.dart';

@JsonSerializable(includeIfNull: false)
class TestContractResult {
  @JsonKey(name: 'returns')
  final List<dynamic>? returns;
  @JsonKey(name: 'gasUsed')
  final num? gasUsed;
  @JsonKey(name: 'contracts')
  final List<ContractState>? contracts;
  @JsonKey(name: 'txOutputs')
  final List<Output>? txOutputs;
  @JsonKey(name: 'events')
  final List<Event>? events;

  TestContractResult({
    this.returns,
    this.gasUsed,
    this.contracts,
    this.txOutputs,
    this.events,
  });

  factory TestContractResult.fromJson(Map<String, dynamic> json) =>
      _$TestContractResultFromJson(json);

  Map<String, dynamic> toJson() => _$TestContractResultToJson(this);
}
