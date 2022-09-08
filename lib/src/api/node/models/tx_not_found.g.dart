// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tx_not_found.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TxNotFound _$TxNotFoundFromJson(Map<String, dynamic> json) => TxNotFound(
      type: json['type'] as String?,
    );

Map<String, dynamic> _$TxNotFoundToJson(TxNotFound instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  return val;
}
