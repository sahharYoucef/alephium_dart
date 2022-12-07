// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      blockHash: json['blockHash'] as String?,
      contractAddress: json['contractAddress'] as String?,
      txId: json['txId'] as String?,
      eventIndex: json['eventIndex'] as int?,
      fields: json['fields'] as List<dynamic>?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$EventToJson(Event instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('blockHash', instance.blockHash);
  writeNotNull('contractAddress', instance.contractAddress);
  writeNotNull('txId', instance.txId);
  writeNotNull('eventIndex', instance.eventIndex);
  writeNotNull('fields', instance.fields);
  writeNotNull('type', instance.type);
  return val;
}
