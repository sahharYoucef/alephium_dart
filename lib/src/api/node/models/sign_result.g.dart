// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignResult _$SignResultFromJson(Map<String, dynamic> json) => SignResult(
      signature: json['signature'] as String?,
    );

Map<String, dynamic> _$SignResultToJson(SignResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('signature', instance.signature);
  return val;
}
