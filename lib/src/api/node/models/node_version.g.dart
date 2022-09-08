// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NodeVersion _$NodeVersionFromJson(Map<String, dynamic> json) => NodeVersion(
      version: json['version'] == null
          ? null
          : ReleaseVersion.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NodeVersionToJson(NodeVersion instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('version', instance.version);
  return val;
}
