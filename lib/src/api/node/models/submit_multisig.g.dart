// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_multisig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubmitMultisig _$SubmitMultisigFromJson(Map<String, dynamic> json) =>
    SubmitMultisig(
      unsignedTx: json['unsignedTx'] as String?,
      signatures: (json['signatures'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SubmitMultisigToJson(SubmitMultisig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('unsignedTx', instance.unsignedTx);
  writeNotNull('signatures', instance.signatures);
  return val;
}
