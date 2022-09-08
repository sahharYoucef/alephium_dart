// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Balance _$BalanceFromJson(Map<String, dynamic> json) => Balance(
      lockedBalance: json['lockedBalance'] as String?,
      balance: json['balance'] as String?,
      balanceHint: json['balanceHint'] as String?,
      warning: json['warning'] as String?,
      lockedBalanceHint: json['lockedBalanceHint'] as String?,
      utxoNum: json['utxoNum'] as int?,
    );

Map<String, dynamic> _$BalanceToJson(Balance instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lockedBalance', instance.lockedBalance);
  writeNotNull('balance', instance.balance);
  writeNotNull('balanceHint', instance.balanceHint);
  writeNotNull('warning', instance.warning);
  writeNotNull('lockedBalanceHint', instance.lockedBalanceHint);
  writeNotNull('utxoNum', instance.utxoNum);
  return val;
}
