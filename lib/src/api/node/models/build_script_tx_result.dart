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
  final int? fromGroup;
  @JsonKey(name: 'toGroup')
  final int? toGroup;
  @JsonKey(name: 'gasAmount')
  final int? gasAmount;
  @JsonKey(
      name: 'gasPrice',
      fromJson: fromJsonStringToBigInt,
      toJson: toJsonBigIntToString)
  final BigInt? gasPrice;

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
