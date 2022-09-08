// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decode_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DecodeTransaction _$DecodeTransactionFromJson(Map<String, dynamic> json) =>
    DecodeTransaction(
      unsignedTx: json['unsignedTx'] as String?,
    );

Map<String, dynamic> _$DecodeTransactionToJson(DecodeTransaction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('unsignedTx', instance.unsignedTx);
  return val;
}
