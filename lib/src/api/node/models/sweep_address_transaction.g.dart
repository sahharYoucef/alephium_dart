// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sweep_address_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SweepAddressTransaction _$SweepAddressTransactionFromJson(
        Map<String, dynamic> json) =>
    SweepAddressTransaction(
      txId: json['txId'] as String?,
      unsignedTx: json['unsignedTx'] as String?,
      gasAmount: json['gasAmount'] as num?,
      gasPrice: fromJsonStringToNum(json['gasPrice'] as String?),
    );

Map<String, dynamic> _$SweepAddressTransactionToJson(
    SweepAddressTransaction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('txId', instance.txId);
  writeNotNull('unsignedTx', instance.unsignedTx);
  writeNotNull('gasAmount', instance.gasAmount);
  writeNotNull('gasPrice', toJsonNumToString(instance.gasPrice));
  return val;
}
