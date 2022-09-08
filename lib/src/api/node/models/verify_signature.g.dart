// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_signature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifySignature _$VerifySignatureFromJson(Map<String, dynamic> json) =>
    VerifySignature(
      signature: json['signature'] as String?,
      publicKey: json['publicKey'] as String?,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$VerifySignatureToJson(VerifySignature instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('signature', instance.signature);
  writeNotNull('publicKey', instance.publicKey);
  writeNotNull('data', instance.data);
  return val;
}
