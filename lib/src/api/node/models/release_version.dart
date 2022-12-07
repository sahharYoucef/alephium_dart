import 'package:json_annotation/json_annotation.dart';

part 'release_version.g.dart';

@JsonSerializable(includeIfNull: false)
class ReleaseVersion {
  @JsonKey(name: 'major')
  final int? major;
  @JsonKey(name: 'minor')
  final int? minor;
  @JsonKey(name: 'patch')
  final int? patch;

  ReleaseVersion({
    this.major,
    this.minor,
    this.patch,
  });

  factory ReleaseVersion.fromJson(Map<String, dynamic> json) =>
      _$ReleaseVersionFromJson(json);

  Map<String, dynamic> toJson() => _$ReleaseVersionToJson(this);
}
