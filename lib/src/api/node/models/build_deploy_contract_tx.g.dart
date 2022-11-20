// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_deploy_contract_tx.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildDeployContractTx _$BuildDeployContractTxFromJson(
        Map<String, dynamic> json) =>
    BuildDeployContractTx(
      fromPublicKey: json['fromPublicKey'] as String?,
      bytecode: json['bytecode'] as String?,
      initialAttoAlphAmount:
          fromJsonStringToNum(json['initialAttoAlphAmount'] as String?),
      initialTokenAmounts: (json['initialTokenAmounts'] as List<dynamic>?)
          ?.map((e) => Token.fromJson(e as Map<String, dynamic>))
          .toList(),
      issueTokenAmount: json['issueTokenAmount'] as String?,
      gasAmount: json['gasAmount'] as num?,
      gasPrice: fromJsonStringToNum(json['gasPrice'] as String?),
      targetBlockHash: json['targetBlockHash'] as String?,
    );

Map<String, dynamic> _$BuildDeployContractTxToJson(
    BuildDeployContractTx instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fromPublicKey', instance.fromPublicKey);
  writeNotNull('bytecode', instance.bytecode);
  writeNotNull('initialAttoAlphAmount',
      toJsonNumToString(instance.initialAttoAlphAmount));
  writeNotNull('initialTokenAmounts', instance.initialTokenAmounts);
  writeNotNull('issueTokenAmount', instance.issueTokenAmount);
  writeNotNull('gasAmount', instance.gasAmount);
  writeNotNull('gasPrice', instance.gasPrice);
  writeNotNull('targetBlockHash', instance.targetBlockHash);
  return val;
}
