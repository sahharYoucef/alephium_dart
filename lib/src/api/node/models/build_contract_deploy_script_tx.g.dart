// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_contract_deploy_script_tx.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildContractDeployScriptTx _$BuildContractDeployScriptTxFromJson(
        Map<String, dynamic> json) =>
    BuildContractDeployScriptTx(
      fromPublicKey: json['fromPublicKey'] as String?,
      bytecode: json['bytecode'] as String?,
      initialFields: json['initialFields'] as List<dynamic>?,
      gas: json['gas'] as num?,
      attoAlphAmount: json['attoAlphAmount'] as String?,
      gasPrice: json['gasPrice'] as String?,
      utxosLimit: json['utxosLimit'] as num?,
    );

Map<String, dynamic> _$BuildContractDeployScriptTxToJson(
    BuildContractDeployScriptTx instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fromPublicKey', instance.fromPublicKey);
  writeNotNull('bytecode', instance.bytecode);
  writeNotNull('initialFields', instance.initialFields);
  writeNotNull('gas', instance.gas);
  writeNotNull('attoAlphAmount', instance.attoAlphAmount);
  writeNotNull('gasPrice', instance.gasPrice);
  writeNotNull('utxosLimit', instance.utxosLimit);
  return val;
}
