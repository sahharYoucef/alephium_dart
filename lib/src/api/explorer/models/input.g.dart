// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExplorerInput _$ExplorerInputFromJson(Map<String, dynamic> json) =>
    ExplorerInput(
      outputRef: json['outputRef'] == null
          ? null
          : ExplorerOutputRef.fromJson(
              json['outputRef'] as Map<String, dynamic>),
      unlockScript: json['unlockScript'] as String?,
      txHashRef: json['txHashRef'] as String?,
      address: json['address'] as String?,
      attoAlphAmount: fromJsonStringToNum(json['attoAlphAmount'] as String?),
      tokens: (json['tokens'] as List<dynamic>?)
          ?.map((e) => Token.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExplorerInputToJson(ExplorerInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('outputRef', instance.outputRef);
  writeNotNull('unlockScript', instance.unlockScript);
  writeNotNull('txHashRef', instance.txHashRef);
  writeNotNull('address', instance.address);
  writeNotNull('attoAlphAmount', toJsonNumToString(instance.attoAlphAmount));
  writeNotNull('tokens', instance.tokens);
  return val;
}
