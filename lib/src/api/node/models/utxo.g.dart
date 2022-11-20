// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utxo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Utxo _$UtxoFromJson(Map<String, dynamic> json) => Utxo(
      ref: json['ref'] == null
          ? null
          : OutputRef.fromJson(json['ref'] as Map<String, dynamic>),
      amount: fromJsonStringToBigInt(json['amount'] as String?),
      tokens: (json['tokens'] as List<dynamic>?)
          ?.map((e) => Token.fromJson(e as Map<String, dynamic>))
          .toList(),
      lockTime: json['lockTime'] as int?,
      additionalData: json['additionalData'] as String?,
    );

Map<String, dynamic> _$UtxoToJson(Utxo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ref', instance.ref);
  writeNotNull('amount', toJsonBigIntToString(instance.amount));
  writeNotNull('tokens', instance.tokens);
  writeNotNull('lockTime', instance.lockTime);
  writeNotNull('additionalData', instance.additionalData);
  return val;
}
