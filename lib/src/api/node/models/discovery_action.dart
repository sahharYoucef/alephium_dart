import 'package:json_annotation/json_annotation.dart';

part 'discovery_action.g.dart';

@JsonSerializable(includeIfNull: false)
class DiscoveryAction {
  @JsonKey(name: 'peers')
  final List<String>? peers;
  @JsonKey(name: 'type')
  final String? type;

  DiscoveryAction({
    this.peers,
    this.type,
  });

  factory DiscoveryAction.fromJson(Map<String, dynamic> json) =>
      _$DiscoveryActionFromJson(json);
  Map<String, dynamic> toJson() => _$DiscoveryActionToJson(this);
}
