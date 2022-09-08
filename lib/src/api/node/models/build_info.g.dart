// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildInfo _$BuildInfoFromJson(Map<String, dynamic> json) => BuildInfo(
      releaseVersion: json['releaseVersion'] as String?,
      commit: json['commit'] as String?,
    );

Map<String, dynamic> _$BuildInfoToJson(BuildInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('releaseVersion', instance.releaseVersion);
  writeNotNull('commit', instance.commit);
  return val;
}
