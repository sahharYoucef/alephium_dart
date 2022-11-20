// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetOutput _$AssetOutputFromJson(Map<String, dynamic> json) => AssetOutput(
      attoAlphAmount: fromJsonStringToNum(json['attoAlphAmount'] as String?),
      address: json['address'] as String?,
      tokens: (json['tokens'] as List<dynamic>?)
          ?.map((e) => Token.fromJson(e as Map<String, dynamic>))
          .toList(),
      lockTime: json['lockTime'] as num?,
      message: json['message'] as String?,
      type: json['type'] as String?,
      hint: json['hint'] as num?,
      key: json['key'] as String?,
    );

Map<String, dynamic> _$AssetOutputToJson(AssetOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hint', instance.hint);
  writeNotNull('key', instance.key);
  writeNotNull('attoAlphAmount', toJsonNumToString(instance.attoAlphAmount));
  writeNotNull('address', instance.address);
  writeNotNull('tokens', instance.tokens);
  writeNotNull('lockTime', instance.lockTime);
  writeNotNull('message', instance.message);
  writeNotNull('type', instance.type);
  return val;
}
