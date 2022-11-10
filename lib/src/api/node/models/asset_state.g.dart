// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetState _$AssetStateFromJson(Map<String, dynamic> json) => AssetState(
      attoAlphAmount: json['attoAlphAmount'] as String?,
      tokens: json['tokens'] == null
          ? null
          : Token.fromJson(json['tokens'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AssetStateToJson(AssetState instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attoAlphAmount', instance.attoAlphAmount);
  writeNotNull('tokens', instance.tokens);
  return val;
}
