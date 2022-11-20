// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExplorerOutput _$ExplorerOutputFromJson(Map<String, dynamic> json) =>
    ExplorerOutput(
      address: json['address'] as String?,
      attoAlphAmount: fromJsonStringToBigInt(json['attoAlphAmount'] as String?),
      hint: json['hint'] as int?,
      key: json['key'] as String?,
      lockTime: json['lockTime'] as int?,
      spent: json['spent'] as String?,
      tokens: (json['tokens'] as List<dynamic>?)
          ?.map((e) => Token.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ExplorerOutputToJson(ExplorerOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('attoAlphAmount', toJsonBigIntToString(instance.attoAlphAmount));
  writeNotNull('hint', instance.hint);
  writeNotNull('key', instance.key);
  writeNotNull('lockTime', instance.lockTime);
  writeNotNull('spent', instance.spent);
  writeNotNull('tokens', instance.tokens);
  writeNotNull('type', instance.type);
  writeNotNull('message', instance.message);
  return val;
}
