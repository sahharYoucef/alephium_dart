import 'package:json_annotation/json_annotation.dart';

import 'asset_input.dart';
import 'fixed_asset_output.dart';

part 'unsigned_tx.g.dart';

@JsonSerializable(includeIfNull: false)
class UnsignedTx {
  @JsonKey(name: 'txId')
  final String? txId;
  @JsonKey(name: 'version')
  final int? version;
  @JsonKey(name: 'networkId')
  final int? networkId;
  @JsonKey(name: 'scriptOpt')
  final String? scriptOpt;
  @JsonKey(name: 'gasPrice')
  final String? gasPrice;
  @JsonKey(name: 'gasAmount')
  final num? gasAmount;
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
