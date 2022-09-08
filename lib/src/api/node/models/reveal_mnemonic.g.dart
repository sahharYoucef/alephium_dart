// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reveal_mnemonic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RevealMnemonic _$RevealMnemonicFromJson(Map<String, dynamic> json) =>
    RevealMnemonic(
      password: json['password'] as String?,
    );

Map<String, dynamic> _$RevealMnemonicToJson(RevealMnemonic instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('password', instance.password);
  return val;
}
