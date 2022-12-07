// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) => Transaction(
      unsigned: json['unsigned'] == null
          ? null
          : UnsignedTx.fromJson(json['unsigned'] as Map<String, dynamic>),
      scriptExecutionOk: json['scriptExecutionOk'] as bool?,
      contractInputs: (json['contractInputs'] as List<dynamic>?)
          ?.map((e) => OutputRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      generatedOutputs: (json['generatedOutputs'] as List<dynamic>?)
          ?.map((e) => AssetOutput.fromJson(e as Map<String, dynamic>))
          .toList(),
      inputSignatures: (json['inputSignatures'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      scriptSignatures: (json['scriptSignatures'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TransactionToJson(Transaction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('unsigned', instance.unsigned);
  writeNotNull('scriptExecutionOk', instance.scriptExecutionOk);
  writeNotNull('contractInputs', instance.contractInputs);
  writeNotNull('generatedOutputs', instance.generatedOutputs);
  writeNotNull('inputSignatures', instance.inputSignatures);
  writeNotNull('scriptSignatures', instance.scriptSignatures);
  return val;
}
