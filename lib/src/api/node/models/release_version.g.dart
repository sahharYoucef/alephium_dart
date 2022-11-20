// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReleaseVersion _$ReleaseVersionFromJson(Map<String, dynamic> json) =>
    ReleaseVersion(
      major: json['major'] as int?,
      minor: json['minor'] as int?,
      patch: json['patch'] as int?,
    );

Map<String, dynamic> _$ReleaseVersionToJson(ReleaseVersion instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('major', instance.major);
  writeNotNull('minor', instance.minor);
  writeNotNull('patch', instance.patch);
  return val;
}
