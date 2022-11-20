import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:json_annotation/json_annotation.dart';

part 'build_script_tx_result.g.dart';

@JsonSerializable(includeIfNull: false)
class BuildScriptTxResult {
  @JsonKey(name: 'txId')
  final String? txId;
  @JsonKey(name: 'unsignedTx')
  final String? unsignedTx;
  @JsonKey(name: 'fromGroup')
  final num? fromGroup;
  @JsonKey(name: 'toGroup')
  final num? toGroup;
  @JsonKey(name: 'gasAmount')
  final num? gasAmount;
  @JsonKey(
      name: 'gasPrice',
      fromJson: fromJsonStringToNum,
      toJson: toJsonNumToString)
  final num? gasPrice;

  BuildScriptTxResult({
    this.fromGroup,
    this.toGroup,
    this.gasAmount,
    this.gasPrice,
    this.txId,
    this.unsignedTx,
  });

  factory BuildScriptTxResult.fromJson(Map<String, dynamic> json) =>
      _$BuildScriptTxResultFromJson(json);

  Map<String, dynamic> toJson() => _$BuildScriptTxResultToJson(this);
}
