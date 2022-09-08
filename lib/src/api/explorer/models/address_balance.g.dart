// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExplorerAddressBalance _$ExplorerAddressBalanceFromJson(
        Map<String, dynamic> json) =>
    ExplorerAddressBalance(
      balance: json['balance'] as String?,
      lockedBalance: json['lockedBalance'] as String?,
    );

Map<String, dynamic> _$ExplorerAddressBalanceToJson(
    ExplorerAddressBalance instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('balance', instance.balance);
  writeNotNull('lockedBalance', instance.lockedBalance);
  return val;
}
