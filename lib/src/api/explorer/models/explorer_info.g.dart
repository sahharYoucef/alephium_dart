// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explorer_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExplorerInfo _$ExplorerInfoFromJson(Map<String, dynamic> json) => ExplorerInfo(
      releaseVersion: json['releaseVersion'] as String?,
      commit: json['commit'] as String?,
    );

Map<String, dynamic> _$ExplorerInfoToJson(ExplorerInfo instance) {
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
