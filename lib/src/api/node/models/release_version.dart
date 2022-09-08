import 'package:json_annotation/json_annotation.dart';

part 'release_version.g.dart';

@JsonSerializable(includeIfNull: false)
class ReleaseVersion {
  @JsonKey(name: 'major')
  final num? major;
  @JsonKey(name: 'minor')
  final num? minor;
  @JsonKey(name: 'patch')
  final num? patch;

  ReleaseVersion({
    this.major,
    this.minor,
    this.patch,
  });

  factory ReleaseVersion.fromJson(Map<String, dynamic> json) =>
      _$ReleaseVersionFromJson(json);

  Map<String, dynamic> toJson() => _$ReleaseVersionToJson(this);
}
