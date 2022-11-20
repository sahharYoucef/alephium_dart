// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetState _$AssetStateFromJson(Map<String, dynamic> json) => AssetState(
      attoAlphAmount: fromJsonStringToNum(json['attoAlphAmount'] as String?),
      tokens: (json['tokens'] as List<dynamic>?)
          ?.map((e) => Token.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AssetStateToJson(AssetState instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attoAlphAmount', toJsonNumToString(instance.attoAlphAmount));
  writeNotNull('tokens', instance.tokens);
  return val;
}
