// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balances.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Balances _$BalancesFromJson(Map<String, dynamic> json) => Balances(
      totalBalance: json['totalBalance'] as String?,
      totalBalanceHint: json['totalBalanceHint'] as String?,
      balances: (json['balances'] as List<dynamic>?)
          ?.map((e) => AddressBalance.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BalancesToJson(Balances instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('totalBalance', instance.totalBalance);
  writeNotNull('totalBalanceHint', instance.totalBalanceHint);
  writeNotNull('balances', instance.balances);
  return val;
}
