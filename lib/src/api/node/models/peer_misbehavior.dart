import 'package:json_annotation/json_annotation.dart';

import 'peer_status.dart';

part 'peer_misbehavior.g.dart';

@JsonSerializable(includeIfNull: false)
class PeerMisbehavior {
  @JsonKey(name: 'peer')
  final String? peer;
  @JsonKey(name: 'status')
  final PeerStatus? status;

  PeerMisbehavior({
    this.peer,
    this.status,
  });

  factory PeerMisbehavior.fromJson(Map<String, dynamic> json) =>
      _$PeerMisbehaviorFromJson(json);

  Map<String, dynamic> toJson() => _$PeerMisbehaviorToJson(this);
}
