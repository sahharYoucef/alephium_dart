// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Output _$OutputFromJson(Map<String, dynamic> json) => Output(
      attoAlphAmount: json['attoAlphAmount'] as String?,
      alphAmount: json['alphAmount'] as String?,
      address: json['address'] as String?,
      tokens: json['tokens'] == null
          ? null
          : Token.fromJson(json['tokens'] as Map<String, dynamic>),
      lockTime: json['lockTime'] as int?,
      additionalData: json['additionalData'] as String?,
      type: json['type'] as String?,
      hint: json['hint'] as int?,
      key: json['key'] as String?,
    );

Map<String, dynamic> _$OutputToJson(Output instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hint', instance.hint);
  writeNotNull('key', instance.key);
  writeNotNull('attoAlphAmount', instance.attoAlphAmount);
  writeNotNull('alphAmount', instance.alphAmount);
  writeNotNull('address', instance.address);
  writeNotNull('tokens', instance.tokens);
  writeNotNull('lockTime', instance.lockTime);
  writeNotNull('additionalData', instance.additionalData);
  writeNotNull('type', instance.type);
  return val;
}
