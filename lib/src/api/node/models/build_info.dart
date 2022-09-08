import 'package:json_annotation/json_annotation.dart';

part 'build_info.g.dart';

@JsonSerializable(includeIfNull: false)
class BuildInfo {
  @JsonKey(name: 'releaseVersion')
  final String? releaseVersion;
  @JsonKey(name: 'commit')
  final String? commit;

  BuildInfo({
    this.releaseVersion,
    this.commit,
  });

  factory BuildInfo.fromJson(Map<String, dynamic> json) =>
      _$BuildInfoFromJson(json);

  Map<String, dynamic> toJson() => _$BuildInfoToJson(this);
}
