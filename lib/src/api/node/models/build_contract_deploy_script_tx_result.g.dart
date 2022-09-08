// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_contract_deploy_script_tx_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildContractDeployScriptTxResult _$BuildContractDeployScriptTxResultFromJson(
        Map<String, dynamic> json) =>
    BuildContractDeployScriptTxResult(
      txId: json['txId'] as String?,
      contractAddress: json['contractAddress'] as String?,
      unsignedTx: json['unsignedTx'] as String?,
      group: json['group'] as num?,
    );

Map<String, dynamic> _$BuildContractDeployScriptTxResultToJson(
    BuildContractDeployScriptTxResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('txId', instance.txId);
  writeNotNull('contractAddress', instance.contractAddress);
  writeNotNull('unsignedTx', instance.unsignedTx);
  writeNotNull('group', instance.group);
  return val;
}
