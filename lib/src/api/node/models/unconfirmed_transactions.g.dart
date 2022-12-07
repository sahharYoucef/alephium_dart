// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unconfirmed_transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnconfirmedTransactions _$UnconfirmedTransactionsFromJson(
        Map<String, dynamic> json) =>
    UnconfirmedTransactions(
      fromGroup: json['fromGroup'] as int?,
      toGroup: json['toGroup'] as int?,
      unconfirmedTransactions: (json['unconfirmedTransactions']
              as List<dynamic>?)
          ?.map((e) => TransactionTemplate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UnconfirmedTransactionsToJson(
    UnconfirmedTransactions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fromGroup', instance.fromGroup);
  writeNotNull('toGroup', instance.toGroup);
  writeNotNull('unconfirmedTransactions', instance.unconfirmedTransactions);
  return val;
}
