// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubmitTransaction _$SubmitTransactionFromJson(Map<String, dynamic> json) =>
    SubmitTransaction(
      unsignedTx: json['unsignedTx'] as String?,
      signature: json['signature'] as String?,
    );

Map<String, dynamic> _$SubmitTransactionToJson(SubmitTransaction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('unsignedTx', instance.unsignedTx);
  writeNotNull('signature', instance.signature);
  return val;
}
