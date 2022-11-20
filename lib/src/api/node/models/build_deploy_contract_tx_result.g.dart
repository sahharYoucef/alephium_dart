// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_deploy_contract_tx_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildDeployContractTxResult _$BuildDeployContractTxResultFromJson(
        Map<String, dynamic> json) =>
    BuildDeployContractTxResult(
      txId: json['txId'] as String?,
      contractAddress: json['contractAddress'] as String?,
      unsignedTx: json['unsignedTx'] as String?,
      fromGroup: json['fromGroup'] as int?,
      toGroup: json['toGroup'] as int?,
      gasAmount: json['gasAmount'] as int?,
      gasPrice: fromJsonStringToBigInt(json['gasPrice'] as String?),
    );

Map<String, dynamic> _$BuildDeployContractTxResultToJson(
    BuildDeployContractTxResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('txId', instance.txId);
  writeNotNull('contractAddress', instance.contractAddress);
  writeNotNull('unsignedTx', instance.unsignedTx);
  writeNotNull('fromGroup', instance.fromGroup);
  writeNotNull('toGroup', instance.toGroup);
  writeNotNull('gasAmount', instance.gasAmount);
  writeNotNull('gasPrice', toJsonBigIntToString(instance.gasPrice));
  return val;
}
