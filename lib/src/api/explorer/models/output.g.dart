// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExplorerOutput _$ExplorerOutputFromJson(Map<String, dynamic> json) =>
    ExplorerOutput(
      address: json['address'] as String?,
      amount: json['amount'] as String?,
      hint: json['hint'] as int?,
      key: json['key'] as String?,
      lockTime: json['lockTime'] as int?,
      spent: json['spent'] as String?,
    );

Map<String, dynamic> _$ExplorerOutputToJson(ExplorerOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('amount', instance.amount);
  writeNotNull('hint', instance.hint);
  writeNotNull('key', instance.key);
  writeNotNull('lockTime', instance.lockTime);
  writeNotNull('spent', instance.spent);
  return val;
}
