import 'package:alephium_dart/src/api/node/models/debug_message.dart';
import 'package:json_annotation/json_annotation.dart';

import 'contract_state.dart';
import 'event.dart';
import 'asset_output.dart';

part 'call_contract_result.g.dart';

@JsonSerializable(includeIfNull: false)
class CallContractResult {
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'codeHash')
  final String? codeHash;
  @JsonKey(name: 'gasUsed')
  final num? gasUsed;
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

  CallContractResult({
    this.gasUsed,
    this.address,
    this.codeHash,
    this.debugMessages,
    this.contracts,
    this.txOutputs,
    this.txInputs,
    this.events,
  });

  factory CallContractResult.fromJson(Map<String, dynamic> json) =>
      _$CallContractResultFromJson(json);

  Map<String, dynamic> toJson() => _$CallContractResultToJson(this);
}
