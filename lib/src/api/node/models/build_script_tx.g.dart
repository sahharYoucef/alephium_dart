// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_script_tx.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildScriptTx _$BuildScriptTxFromJson(Map<String, dynamic> json) =>
    BuildScriptTx(
      fromPublicKey: json['fromPublicKey'] as String?,
      byteCode: json['bytecode'] as String?,
      tokens: (json['tokens'] as List<dynamic>?)
          ?.map((e) => Token.fromJson(e as Map<String, dynamic>))
          .toList(),
      gasAmount: json['gasAmount'] as int?,
      attoAlphAmount: fromJsonStringToBigInt(json['attoAlphAmount'] as String?),
      gasPrice: fromJsonStringToBigInt(json['gasPrice'] as String?),
      targetBlockHash: json['targetBlockHash'] as num?,
    );

Map<String, dynamic> _$BuildScriptTxToJson(BuildScriptTx instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fromPublicKey', instance.fromPublicKey);
  writeNotNull('bytecode', instance.byteCode);
  writeNotNull('tokens', instance.tokens);
  writeNotNull('gasAmount', instance.gasAmount);
  writeNotNull('attoAlphAmount', toJsonBigIntToString(instance.attoAlphAmount));
  writeNotNull('gasPrice', toJsonBigIntToString(instance.gasPrice));
  writeNotNull('targetBlockHash', instance.targetBlockHash);
  return val;
}
