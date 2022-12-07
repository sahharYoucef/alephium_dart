// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debug_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DebugMessage _$DebugMessageFromJson(Map<String, dynamic> json) => DebugMessage(
      contractAddress: json['contractAddress'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$DebugMessageToJson(DebugMessage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('contractAddress', instance.contractAddress);
  writeNotNull('message', instance.message);
  return val;
}
