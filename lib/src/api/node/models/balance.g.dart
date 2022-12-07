// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Balance _$BalanceFromJson(Map<String, dynamic> json) => Balance(
      lockedBalance: fromJsonStringToBigInt(json['lockedBalance'] as String?),
      balance: fromJsonStringToBigInt(json['balance'] as String?),
      balanceHint: json['balanceHint'] as String?,
      warning: json['warning'] as String?,
      lockedBalanceHint: json['lockedBalanceHint'] as String?,
      utxoNum: json['utxoNum'] as int?,
      tokenBalances: (json['tokenBalances'] as List<dynamic>?)
          ?.map((e) => Token.fromJson(e as Map<String, dynamic>))
          .toList(),
      lockedTokenBalances: (json['lockedTokenBalances'] as List<dynamic>?)
          ?.map((e) => Token.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BalanceToJson(Balance instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lockedBalance', toJsonBigIntToString(instance.lockedBalance));
  writeNotNull('lockedBalanceHint', instance.lockedBalanceHint);
  writeNotNull('balance', toJsonBigIntToString(instance.balance));
  writeNotNull('balanceHint', instance.balanceHint);
  writeNotNull('tokenBalances', instance.tokenBalances);
  writeNotNull('lockedTokenBalances', instance.lockedTokenBalances);
  writeNotNull('utxoNum', instance.utxoNum);
  writeNotNull('warning', instance.warning);
  return val;
}
