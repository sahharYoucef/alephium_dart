// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uoutput.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UOutput _$UOutputFromJson(Map<String, dynamic> json) => UOutput(
      amount: json['amount'] as String?,
      address: json['address'] as String?,
      lockTime: json['lockTime'] as int?,
    );

Map<String, dynamic> _$UOutputToJson(UOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('address', instance.address);
  writeNotNull('lockTime', instance.lockTime);
  return val;
}
