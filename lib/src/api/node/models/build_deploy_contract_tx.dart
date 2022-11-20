import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:alephium_dart/src/api/node/models/token.dart';
import 'package:json_annotation/json_annotation.dart';

part 'build_deploy_contract_tx.g.dart';

@JsonSerializable(includeIfNull: false)
class BuildDeployContractTx {
  @JsonKey(name: 'fromPublicKey')
  final String? fromPublicKey;
  @JsonKey(name: 'bytecode')
  final String? bytecode;
  @JsonKey(
      name: 'initialAttoAlphAmount',
      fromJson: fromJsonStringToBigInt,
      toJson: toJsonBigIntToString)
  final BigInt? initialAttoAlphAmount;
  @JsonKey(name: 'initialTokenAmounts')
  final List<Token>? initialTokenAmounts;
  @JsonKey(
      name: 'issueTokenAmount',
      fromJson: fromJsonStringToBigInt,
      toJson: toJsonBigIntToString)
  final BigInt? issueTokenAmount;
  @JsonKey(name: 'gasAmount')
  final int? gasAmount;
  @JsonKey(
      name: 'gasPrice',
      fromJson: fromJsonStringToBigInt,
      toJson: toJsonBigIntToString)
  final BigInt? gasPrice;
  @JsonKey(name: 'targetBlockHash')
  final String? targetBlockHash;

  BuildDeployContractTx(
      {this.fromPublicKey,
      this.bytecode,
      this.initialAttoAlphAmount,
      this.initialTokenAmounts,
      this.issueTokenAmount,
      this.gasAmount,
      this.gasPrice,
      this.targetBlockHash});

  factory BuildDeployContractTx.fromJson(Map<String, dynamic> json) =>
      _$BuildDeployContractTxFromJson(json);

  Map<String, dynamic> toJson() => _$BuildDeployContractTxToJson(this);
}
