// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tx_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TxStatus _$TxStatusFromJson(Map<String, dynamic> json) => TxStatus(
      txIndex: json['txIndex'] as int?,
      blockHash: json['blockHash'] as String?,
      chainConfirmations: json['chainConfirmations'] as int?,
      toGroupConfirmations: json['toGroupConfirmations'] as int?,
      fromGroupConfirmations: json['fromGroupConfirmations'] as int?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$TxStatusToJson(TxStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('txIndex', instance.txIndex);
  writeNotNull('blockHash', instance.blockHash);
  writeNotNull('chainConfirmations', instance.chainConfirmations);
  writeNotNull('toGroupConfirmations', instance.toGroupConfirmations);
  writeNotNull('fromGroupConfirmations', instance.fromGroupConfirmations);
  writeNotNull('type', instance.type);
  return val;
}
