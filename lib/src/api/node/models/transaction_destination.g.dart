// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_destination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionDestination _$TransactionDestinationFromJson(
        Map<String, dynamic> json) =>
    TransactionDestination(
      address: json['address'] as String?,
      attoAlphAmount: json['attoAlphAmount'] as String?,
      tokens: json['tokens'] == null
          ? null
          : Token.fromJson(json['tokens'] as Map<String, dynamic>),
      lockTime: json['lockTime'] as int?,
    );

Map<String, dynamic> _$TransactionDestinationToJson(
    TransactionDestination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('attoAlphAmount', instance.attoAlphAmount);
  writeNotNull('tokens', instance.tokens);
  writeNotNull('lockTime', instance.lockTime);
  return val;
}
