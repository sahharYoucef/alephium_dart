import 'package:json_annotation/json_annotation.dart';

part 'peer_status.g.dart';

@JsonSerializable(includeIfNull: false)
class PeerStatus {
  @JsonKey(name: 'until')
  final int? until;
  @JsonKey(name: 'value')
  final int? value;
  @JsonKey(name: 'type')
  final String? type;

  PeerStatus({
    this.until,
    this.value,
    this.type,
  });

  factory PeerStatus.fromJson(Map<String, dynamic> json) =>
      _$PeerStatusFromJson(json);

  Map<String, dynamic> toJson() => _$PeerStatusToJson(this);
}
