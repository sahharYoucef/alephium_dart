// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetInput _$AssetInputFromJson(Map<String, dynamic> json) => AssetInput(
      outputRef: json['outputRef'] == null
          ? null
          : OutputRef.fromJson(json['outputRef'] as Map<String, dynamic>),
      unlockScript: json['unlockScript'] as String?,
    );

Map<String, dynamic> _$AssetInputToJson(AssetInput instance) {
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
