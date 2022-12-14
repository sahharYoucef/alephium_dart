import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:json_annotation/json_annotation.dart';

import 'asset_input.dart';
import 'fixed_asset_output.dart';

part 'unsigned_tx.g.dart';

@JsonSerializable(includeIfNull: false)
class UnsignedTx {
  @JsonKey(name: 'txId')
  final String? txId;
  @JsonKey(name: 'version')
  final num? version;
  @JsonKey(name: 'networkId')
  final num? networkId;
  @JsonKey(name: 'scriptOpt')
  final String? scriptOpt;
  @JsonKey(
      name: 'gasPrice',
      fromJson: fromJsonStringToBigInt,
      toJson: toJsonBigIntToString)
  final BigInt? gasPrice;
  @JsonKey(name: 'gasAmount')
  final int? gasAmount;
  @JsonKey(name: 'inputs')
  final List<AssetInput>? inputs;
  @JsonKey(name: 'fixedOutputs')
  final List<FixedAssetOutput>? fixedOutputs;

  UnsignedTx({
    this.txId,
    this.version,
    this.networkId,
    this.scriptOpt,
    this.gasPrice,
    this.gasAmount,
    this.inputs,
    this.fixedOutputs,
  });

  factory UnsignedTx.fromJson(Map<String, dynamic> json) =>
      _$UnsignedTxFromJson(json);
  Map<String, dynamic> toJson() => _$UnsignedTxToJson(this);
}
