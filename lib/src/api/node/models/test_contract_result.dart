import 'package:alephium_dart/src/api/node/models/debug_message.dart';
import 'package:json_annotation/json_annotation.dart';

import 'contract_state.dart';
import 'event.dart';
import 'asset_output.dart';

part 'test_contract_result.g.dart';

@JsonSerializable(includeIfNull: false)
class TestContractResult {
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'codeHash')
  final String? codeHash;
  @JsonKey(name: 'gasUsed')
  final int? gasUsed;
  @JsonKey(name: 'debugMessages')
  final DebugMessage? debugMessages;
  @JsonKey(name: 'contracts')
  final List<ContractState>? contracts;
  @JsonKey(name: 'txInputs')
  final List<String>? txInputs;
  @JsonKey(name: 'txOutputs')
  final List<AssetOutput>? txOutputs;
  @JsonKey(name: 'events')
  final List<Event>? events;

  TestContractResult({
    this.gasUsed,
    this.address,
    this.codeHash,
    this.debugMessages,
    this.contracts,
    this.txOutputs,
    this.txInputs,
    this.events,
  });

  factory TestContractResult.fromJson(Map<String, dynamic> json) =>
      _$TestContractResultFromJson(json);

  Map<String, dynamic> toJson() => _$TestContractResultToJson(this);
}
