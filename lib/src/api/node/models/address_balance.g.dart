// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressBalance _$AddressBalanceFromJson(Map<String, dynamic> json) =>
    AddressBalance(
      address: json['address'] as bool?,
      balance: fromJsonStringToBigInt(json['balance'] as String?),
      balanceHint: json['balanceHint'] as String?,
      lockedBalanceHint: json['lockedBalanceHint'] as String?,
      lockedBalance: fromJsonStringToBigInt(json['lockedBalance'] as String?),
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
  writeNotNull('balance', toJsonBigIntToString(instance.balance));
  writeNotNull('balanceHint', instance.balanceHint);
  writeNotNull('lockedBalance', toJsonBigIntToString(instance.lockedBalance));
  writeNotNull('lockedBalanceHint', instance.lockedBalanceHint);
  writeNotNull('warning', instance.warning);
  return val;
}
