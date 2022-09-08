import 'package:json_annotation/json_annotation.dart';

import 'build_info.dart';

part 'node_info.g.dart';

@JsonSerializable(includeIfNull: false)
class NodeInfo {
  @JsonKey(name: 'buildInfo')
  final BuildInfo? buildInfo;
  @JsonKey(name: 'upnp')
  final bool? upnp;
  @JsonKey(name: 'externalAddress')
  final String? externalAddress;

  NodeInfo({
    this.buildInfo,
    this.upnp,
    this.externalAddress,
  });

  factory NodeInfo.fromJson(Map<String, dynamic> json) =>
      _$NodeInfoFromJson(json);

  Map<String, dynamic> toJson() => _$NodeInfoToJson(this);
}
