import 'package:json_annotation/json_annotation.dart';

part 'build_contract_deploy_script_tx.g.dart';

@JsonSerializable(includeIfNull: false)
class BuildContractDeployScriptTx {
  @JsonKey(name: 'fromPublicKey')
  final String? fromPublicKey;
  @JsonKey(name: 'bytecode')
  final String? bytecode;
  @JsonKey(name: 'initialFields')
  final List<dynamic>? initialFields;
  @JsonKey(name: 'gas')
  final num? gas;
  @JsonKey(name: 'alphAmount')
  final String? alphAmount;
  @JsonKey(name: 'gasPrice')
  final String? gasPrice;
  @JsonKey(name: 'utxosLimit')
  final num? utxosLimit;

  BuildContractDeployScriptTx({
    this.fromPublicKey,
    this.bytecode,
    this.initialFields,
    this.gas,
    this.alphAmount,
    this.gasPrice,
    this.utxosLimit,
  });

  factory BuildContractDeployScriptTx.fromJson(Map<String, dynamic> json) =>
      _$BuildContractDeployScriptTxFromJson(json);

  Map<String, dynamic> toJson() => _$BuildContractDeployScriptTxToJson(this);
}
