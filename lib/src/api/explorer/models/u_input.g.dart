// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'u_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UInput _$UInputFromJson(Map<String, dynamic> json) => UInput(
      outputRef: json['outputRef'] == null
          ? null
          : ExplorerOutputRef.fromJson(
              json['outputRef'] as Map<String, dynamic>),
      unlockScript: json['unlockScript'] as String?,
    );

Map<String, dynamic> _$UInputToJson(UInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('outputRef', instance.outputRef);
  writeNotNull('unlockScript', instance.unlockScript);
  return val;
}
