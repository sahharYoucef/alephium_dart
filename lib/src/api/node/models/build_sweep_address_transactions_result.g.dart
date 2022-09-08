// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_sweep_address_transactions_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildSweepAddressTransactionsResult
    _$BuildSweepAddressTransactionsResultFromJson(Map<String, dynamic> json) =>
        BuildSweepAddressTransactionsResult(
          unsignedTxs: (json['unsignedTxs'] as List<dynamic>?)
              ?.map((e) =>
                  SweepAddressTransaction.fromJson(e as Map<String, dynamic>))
              .toList(),
          fromGroup: json['fromGroup'] as num?,
          toGroup: json['toGroup'] as num?,
        );

Map<String, dynamic> _$BuildSweepAddressTransactionsResultToJson(
    BuildSweepAddressTransactionsResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('unsignedTxs', instance.unsignedTxs);
  writeNotNull('fromGroup', instance.fromGroup);
  writeNotNull('toGroup', instance.toGroup);
  return val;
}
