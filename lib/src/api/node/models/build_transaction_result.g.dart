// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_transaction_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildTransactionResult _$BuildTransactionResultFromJson(
        Map<String, dynamic> json) =>
    BuildTransactionResult(
      unsignedTx: json['unsignedTx'] as String?,
      fromGroup: json['fromGroup'] as int?,
      toGroup: json['toGroup'] as int?,
      txId: json['txId'] as String?,
      gasPrice: fromJsonStringToBigInt(json['gasPrice'] as String?),
      gasAmount: json['gasAmount'] as int?,
    );

Map<String, dynamic> _$BuildTransactionResultToJson(
    BuildTransactionResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('unsignedTx', instance.unsignedTx);
  writeNotNull('fromGroup', instance.fromGroup);
  writeNotNull('toGroup', instance.toGroup);
  writeNotNull('txId', instance.txId);
  writeNotNull('gasPrice', toJsonBigIntToString(instance.gasPrice));
  writeNotNull('gasAmount', instance.gasAmount);
  return val;
}
