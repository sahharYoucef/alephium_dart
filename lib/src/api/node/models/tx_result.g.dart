// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tx_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TxResult _$TxResultFromJson(Map<String, dynamic> json) => TxResult(
      txId: json['txId'] as String?,
      fromGroup: json['fromGroup'] as num?,
      toGroup: json['toGroup'] as num?,
    );

Map<String, dynamic> _$TxResultToJson(TxResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('txId', instance.txId);
  writeNotNull('fromGroup', instance.fromGroup);
  writeNotNull('toGroup', instance.toGroup);
  return val;
}
