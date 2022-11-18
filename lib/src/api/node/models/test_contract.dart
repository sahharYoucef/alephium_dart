import 'package:alephium_dart/src/api/node/models/test_input_asset.dart';
import 'package:json_annotation/json_annotation.dart';

import 'contract_state.dart';
import 'input_asset.dart';

part 'test_contract.g.dart';

@JsonSerializable(includeIfNull: false)
class TestContract {
  @JsonKey(name: 'group')
  final num? group;
  @JsonKey(name: 'worldStateBlockHash')
  final String? worldStateBlockHash;
  @JsonKey(name: 'txId')
  final String? txId;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'methodIndex')
  final num? methodIndex;
  @JsonKey(name: 'args')
  final List<dynamic>? args;
  @JsonKey(name: 'existingContracts')
  final List<String>? existingContracts;
  @JsonKey(name: 'inputAssets')
  final List<TestInputAsset>? inputAssets;

  TestContract({
    this.group,
    this.address,
    this.existingContracts,
    this.inputAssets,
    this.args,
    this.methodIndex,
    this.txId,
    this.worldStateBlockHash,
  });

  factory TestContract.fromJson(Map<String, dynamic> json) =>
      _$TestContractFromJson(json);
  Map<String, dynamic> toJson() => _$TestContractToJson(this);
}
