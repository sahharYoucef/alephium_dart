import 'package:alephium_dart/src/api/node/models/debug_message.dart';
import 'package:alephium_dart/src/api/node/models/val.dart';
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
  @JsonKey(name: 'returns')
  final List<Val>? returns;

  CallContractResult({
    this.gasUsed,
    this.address,
    this.codeHash,
    this.debugMessages,
    this.contracts,
    this.txOutputs,
    this.txInputs,
    this.events,
    this.returns,
  });

  factory CallContractResult.fromJson(Map<String, dynamic> json) =>
      _$CallContractResultFromJson(json);

  Map<String, dynamic> toJson() => _$CallContractResultToJson(this);
}
