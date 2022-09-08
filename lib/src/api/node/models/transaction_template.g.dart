// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionTemplate _$TransactionTemplateFromJson(Map<String, dynamic> json) =>
    TransactionTemplate(
      unsigned: json['unsigned'] == null
          ? null
          : UnsignedTx.fromJson(json['unsigned'] as Map<String, dynamic>),
      inputSignatures: (json['inputSignatures'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      scriptSignatures: (json['scriptSignatures'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TransactionTemplateToJson(TransactionTemplate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('unsigned', instance.unsigned);
  writeNotNull('inputSignatures', instance.inputSignatures);
  writeNotNull('scriptSignatures', instance.scriptSignatures);
  return val;
}
