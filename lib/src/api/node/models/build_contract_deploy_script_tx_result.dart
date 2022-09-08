import 'package:json_annotation/json_annotation.dart';

part 'build_contract_deploy_script_tx_result.g.dart';

@JsonSerializable(includeIfNull: false)
class BuildContractDeployScriptTxResult {
  @JsonKey(name: 'txId')
  final String? txId;
  @JsonKey(name: 'contractAddress')
  final String? contractAddress;
  @JsonKey(name: 'unsignedTx')
  final String? unsignedTx;
  @JsonKey(name: 'group')
  final num? group;

  BuildContractDeployScriptTxResult({
    this.txId,
    this.contractAddress,
    this.unsignedTx,
    this.group,
  });

  factory BuildContractDeployScriptTxResult.fromJson(
          Map<String, dynamic> json) =>
      _$BuildContractDeployScriptTxResultFromJson(json);

  Map<String, dynamic> toJson() =>
      _$BuildContractDeployScriptTxResultToJson(this);
}
