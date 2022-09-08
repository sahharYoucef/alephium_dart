// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reveal_mnemonic_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RevealMnemonicResult _$RevealMnemonicResultFromJson(
        Map<String, dynamic> json) =>
    RevealMnemonicResult(
      mnemonic: json['mnemonic'] as String?,
    );

Map<String, dynamic> _$RevealMnemonicResultToJson(
    RevealMnemonicResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mnemonic', instance.mnemonic);
  return val;
}
