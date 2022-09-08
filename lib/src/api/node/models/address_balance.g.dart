// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressBalance _$AddressBalanceFromJson(Map<String, dynamic> json) =>
    AddressBalance(
      address: json['address'] as bool?,
      balance: json['balance'] as String?,
      balanceHint: json['balanceHint'] as String?,
      lockedBalance: json['lockedBalance'] as String?,
      warning: json['warning'] as String?,
    );

Map<String, dynamic> _$AddressBalanceToJson(AddressBalance instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('balance', instance.balance);
  writeNotNull('balanceHint', instance.balanceHint);
  writeNotNull('lockedBalance', instance.lockedBalance);
  writeNotNull('warning', instance.warning);
  return val;
}
