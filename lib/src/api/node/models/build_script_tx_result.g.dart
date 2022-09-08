// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_script_tx_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildScriptTxResult _$BuildScriptTxResultFromJson(Map<String, dynamic> json) =>
    BuildScriptTxResult(
      txId: json['txId'] as String?,
      unsignedTx: json['unsignedTx'] as String?,
      group: json['group'] as num?,
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
  writeNotNull('group', instance.group);
  return val;
}
