// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output_ref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExplorerOutputRef _$ExplorerOutputRefFromJson(Map<String, dynamic> json) =>
    ExplorerOutputRef(
      hint: json['hint'] as num?,
      key: json['key'] as String?,
    );

Map<String, dynamic> _$ExplorerOutputRefToJson(ExplorerOutputRef instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hint', instance.hint);
  writeNotNull('key', instance.key);
  return val;
}
