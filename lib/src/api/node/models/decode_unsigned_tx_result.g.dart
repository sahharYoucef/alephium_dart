// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decode_unsigned_tx_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DecodeUnsignedTxResult _$DecodeUnsignedTxResultFromJson(
        Map<String, dynamic> json) =>
    DecodeUnsignedTxResult(
      unsignedTx: json['unsignedTx'] == null
          ? null
          : UnsignedTx.fromJson(json['unsignedTx'] as Map<String, dynamic>),
      fromGroup: json['fromGroup'] as num?,
      toGroup: json['toGroup'] as num?,
    );

Map<String, dynamic> _$DecodeUnsignedTxResultToJson(
    DecodeUnsignedTxResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('unsignedTx', instance.unsignedTx);
  writeNotNull('fromGroup', instance.fromGroup);
  writeNotNull('toGroup', instance.toGroup);
  return val;
}
