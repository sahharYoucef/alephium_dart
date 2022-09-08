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
      gas: json['gas'] as num?,
      gasPrice: json['gasPrice'] as String?,
      utxosLimit: json['utxosLimit'] as num?,
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
  writeNotNull('gas', instance.gas);
  writeNotNull('gasPrice', instance.gasPrice);
  writeNotNull('utxosLimit', instance.utxosLimit);
  return val;
}
