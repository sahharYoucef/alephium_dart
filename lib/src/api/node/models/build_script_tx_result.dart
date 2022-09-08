import 'package:json_annotation/json_annotation.dart';

part 'build_script_tx_result.g.dart';

@JsonSerializable(includeIfNull: false)
class BuildScriptTxResult {
  @JsonKey(name: 'txId')
  final String? txId;
  @JsonKey(name: 'unsignedTx')
  final String? unsignedTx;
  @JsonKey(name: 'group')
  final num? group;

  BuildScriptTxResult({
    this.txId,
    this.unsignedTx,
    this.group,
  });

  factory BuildScriptTxResult.fromJson(Map<String, dynamic> json) =>
      _$BuildScriptTxResultFromJson(json);

  Map<String, dynamic> toJson() => _$BuildScriptTxResultToJson(this);
}
