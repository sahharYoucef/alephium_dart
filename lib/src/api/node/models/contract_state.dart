import 'package:alephium_dart/src/api/node/models/val.dart';
import 'package:json_annotation/json_annotation.dart';

import 'asset_state.dart';

part 'contract_state.g.dart';

@JsonSerializable(includeIfNull: false)
class ContractState {
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'bytecode')
  final String? bytecode;
  @JsonKey(name: 'codeHash')
  final String? codeHash;
  @JsonKey(name: 'initialStateHash')
  final String? initialStateHash;
  @JsonKey(name: 'fields')
  final List<Val>? fields;
  @JsonKey(name: 'immFields')
  final List<Val>? immFields;
  @JsonKey(name: 'mutFields')
  final List<Val>? mutFields;
  @JsonKey(name: 'asset')
  final AssetState? asset;

  ContractState({
    this.address,
    this.bytecode,
    this.initialStateHash,
    this.codeHash,
    this.fields,
    this.immFields,
    this.mutFields,
    this.asset,
  });

  factory ContractState.fromJson(Map<String, dynamic> json) =>
      _$ContractStateFromJson(json);

  Map<String, dynamic> toJson() => _$ContractStateToJson(this);
}
