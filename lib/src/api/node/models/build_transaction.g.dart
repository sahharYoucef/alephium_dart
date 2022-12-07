// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildTransaction _$BuildTransactionFromJson(Map<String, dynamic> json) =>
    BuildTransaction(
      fromPublicKey: json['fromPublicKey'] as String?,
      destinations: (json['destinations'] as List<dynamic>?)
          ?.map(
              (e) => TransactionDestination.fromJson(e as Map<String, dynamic>))
          .toList(),
      utxos: (json['utxos'] as List<dynamic>?)
          ?.map((e) => OutputRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      gasAmount: json['gasAmount'] as int?,
      gasPrice: fromJsonStringToBigInt(json['gasPrice'] as String?),
      targetBlockHash: json['targetBlockHash'] as String?,
    );

Map<String, dynamic> _$BuildTransactionToJson(BuildTransaction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fromPublicKey', instance.fromPublicKey);
  writeNotNull('destinations', instance.destinations);
  writeNotNull('utxos', instance.utxos);
  writeNotNull('gasAmount', instance.gasAmount);
  writeNotNull('gasPrice', toJsonBigIntToString(instance.gasPrice));
  writeNotNull('targetBlockHash', instance.targetBlockHash);
  return val;
}
