// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_sweep_address_transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildSweepAddressTransactions _$BuildSweepAddressTransactionsFromJson(
        Map<String, dynamic> json) =>
    BuildSweepAddressTransactions(
      fromPublicKey: json['fromPublicKey'] as String?,
      toAddress: json['toAddress'] as String?,
      lockTime: json['lockTime'] as num?,
      gas: json['gas'] as num?,
      gasPrice: json['gasPrice'] as String?,
      utxosLimit: json['utxosLimit'] as num?,
    );

Map<String, dynamic> _$BuildSweepAddressTransactionsToJson(
    BuildSweepAddressTransactions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fromPublicKey', instance.fromPublicKey);
  writeNotNull('toAddress', instance.toAddress);
  writeNotNull('lockTime', instance.lockTime);
  writeNotNull('gas', instance.gas);
  writeNotNull('gasPrice', instance.gasPrice);
  writeNotNull('utxosLimit', instance.utxosLimit);
  return val;
}