import 'package:json_annotation/json_annotation.dart';

part 'build_deploy_contract_tx_result.g.dart';

@JsonSerializable(includeIfNull: false)
class BuildDeployContractTxResult {
  @JsonKey(name: 'txId')
  final String? txId;
  @JsonKey(name: 'contractAddress')
  final String? contractAddress;
  @JsonKey(name: 'unsignedTx')
  final String? unsignedTx;
  @JsonKey(name: 'fromGroup')
  final num? fromGroup;
  @JsonKey(name: 'toGroup')
  final num? toGroup;
  @JsonKey(name: 'gasAmount')
  final num? gasAmount;
  @JsonKey(name: 'gasPrice')
  final String? gasPrice;

  BuildDeployContractTxResult({
    this.txId,
    this.contractAddress,
    this.unsignedTx,
    this.fromGroup,
    this.toGroup,
    this.gasAmount,
    this.gasPrice,
  });

  factory BuildDeployContractTxResult.fromJson(Map<String, dynamic> json) =>
      _$BuildDeployContractTxResultFromJson(json);

  Map<String, dynamic> toJson() => _$BuildDeployContractTxResultToJson(this);
}
