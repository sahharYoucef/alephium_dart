// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_script_tx_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildScriptTxResult _$BuildScriptTxResultFromJson(Map<String, dynamic> json) =>
    BuildScriptTxResult(
      fromGroup: json['fromGroup'] as num?,
      toGroup: json['toGroup'] as num?,
      gasAmount: json['gasAmount'] as num?,
      gasPrice: json['gasPrice'] as num?,
      txId: json['txId'] as String?,
      unsignedTx: json['unsignedTx'] as String?,
    );

Map<String, dynamic> _$BuildScriptTxResultToJson(BuildScriptTxResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('txId', instance.txId);
  writeNotNull('unsignedTx', instance.unsignedTx);
  writeNotNull('fromGroup', instance.fromGroup);
  writeNotNull('toGroup', instance.toGroup);
  writeNotNull('gasAmount', instance.gasAmount);
  writeNotNull('gasPrice', instance.gasPrice);
  return val;
}
