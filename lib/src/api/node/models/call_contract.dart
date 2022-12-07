import 'package:alephium_dart/src/api/node/models/asset_state.dart';
import 'package:json_annotation/json_annotation.dart';

import 'input_asset.dart';

part 'call_contract.g.dart';

@JsonSerializable(includeIfNull: false)
class CallContract {
  @JsonKey(name: 'group')
  final int? group;
  @JsonKey(name: 'bytecode')
  final String? bytecode;
  @JsonKey(name: 'txId')
  final String? txId;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'methodIndex')
  final num? methodIndex;
  @JsonKey(name: 'initialFields')
  final List<dynamic>? initialFields;
  @JsonKey(name: 'existingContracts')
  final List<String>? existingContracts;
  @JsonKey(name: 'inputAssets')
  final List<InputAsset>? inputAssets;
  @JsonKey(name: 'initialAsset')
  final List<AssetState>? initialAsset;

  CallContract({
    this.group,
    this.address,
    this.existingContracts,
    this.inputAssets,
    this.bytecode,
    this.methodIndex,
    this.txId,
    this.initialAsset,
    this.initialFields,
  });

  factory CallContract.fromJson(Map<String, dynamic> json) =>
      _$CallContractFromJson(json);
  Map<String, dynamic> toJson() => _$CallContractToJson(this);
}
