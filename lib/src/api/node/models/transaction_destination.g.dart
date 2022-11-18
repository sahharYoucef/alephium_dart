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
      tokens: (json['tokens'] as List<dynamic>?)
          ?.map((e) => Token.fromJson(e as Map<String, dynamic>))
          .toList(),
      lockTime: json['lockTime'] as num?,
      message: json['message'] as String?,
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
  writeNotNull('message', instance.message);
  return val;
}
