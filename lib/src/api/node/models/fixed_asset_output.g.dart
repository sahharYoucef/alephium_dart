// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixed_asset_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FixedAssetOutput _$FixedAssetOutputFromJson(Map<String, dynamic> json) =>
    FixedAssetOutput(
      hint: json['hint'] as num?,
      key: json['key'] as String?,
      attoAlphAmount: fromJsonStringToNum(json['attoAlphAmount'] as String?),
      tokens: (json['tokens'] as List<dynamic>?)
          ?.map((e) => Token.fromJson(e as Map<String, dynamic>))
          .toList(),
      lockTime: json['lockTime'] as int?,
      additionalData: json['additionalData'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$FixedAssetOutputToJson(FixedAssetOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hint', instance.hint);
  writeNotNull('key', instance.key);
  writeNotNull('attoAlphAmount', toJsonNumToString(instance.attoAlphAmount));
  writeNotNull('tokens', instance.tokens);
  writeNotNull('lockTime', instance.lockTime);
  writeNotNull('additionalData', instance.additionalData);
  writeNotNull('address', instance.address);
  return val;
}
