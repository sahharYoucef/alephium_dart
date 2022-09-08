import 'package:json_annotation/json_annotation.dart';

import 'release_version.dart';

part 'node_version.g.dart';

@JsonSerializable(includeIfNull: false)
class NodeVersion {
  @JsonKey(name: 'version')
  final ReleaseVersion? version;

  NodeVersion({
    this.version,
  });

  factory NodeVersion.fromJson(Map<String, dynamic> json) =>
      _$NodeVersionFromJson(json);
  Map<String, dynamic> toJson() => _$NodeVersionToJson(this);
}
