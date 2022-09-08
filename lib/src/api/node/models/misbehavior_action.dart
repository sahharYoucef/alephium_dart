import 'package:json_annotation/json_annotation.dart';

part 'misbehavior_action.g.dart';

@JsonSerializable(includeIfNull: false)
class MisbehaviorAction {
  @JsonKey(name: 'peers')
  final List<String>? peers;
  @JsonKey(name: 'type')
  final String? type;

  MisbehaviorAction({
    this.peers,
    this.type,
  });

  factory MisbehaviorAction.fromJson(Map<String, dynamic> json) =>
      _$MisbehaviorActionFromJson(json);

  Map<String, dynamic> toJson() => _$MisbehaviorActionToJson(this);
}
