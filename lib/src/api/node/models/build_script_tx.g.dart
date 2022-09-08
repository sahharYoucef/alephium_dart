// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_script_tx.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildScriptTx _$BuildScriptTxFromJson(Map<String, dynamic> json) =>
    BuildScriptTx(
      fromPublicKey: json['fromPublicKey'] as String?,
      bytecode: json['bytecode'] as String?,
      tokens: (json['tokens'] as List<dynamic>?)
          ?.map((e) => Token.fromJson(e as Map<String, dynamic>))
          .toList(),
      gas: json['gas'] as num?,
      alphAmount: json['alphAmount'] as String?,
      gasPrice: json['gasPrice'] as String?,
      utxosLimit: json['utxosLimit'] as num?,
    );

Map<String, dynamic> _$BuildScriptTxToJson(BuildScriptTx instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fromPublicKey', instance.fromPublicKey);
  writeNotNull('bytecode', instance.bytecode);
  writeNotNull('tokens', instance.tokens);
  writeNotNull('gas', instance.gas);
  writeNotNull('alphAmount', instance.alphAmount);
  writeNotNull('gasPrice', instance.gasPrice);
  writeNotNull('utxosLimit', instance.utxosLimit);
  return val;
}
