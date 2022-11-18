import 'package:json_annotation/json_annotation.dart';

part 'inter_clique_peer_info.g.dart';

@JsonSerializable(includeIfNull: false)
class InterCliquePeerInfo {
  @JsonKey(name: 'cliqueId')
  final String? cliqueId;
  @JsonKey(name: 'brokerId')
  final num? brokerId;
  @JsonKey(name: 'groupNumPerBroker')
  final num? groupNumPerBroker;
  @JsonKey(name: 'address')
  final Map<String, dynamic>? address;
  @JsonKey(name: 'isSynced')
  final bool? isSynced;
  @JsonKey(name: 'clientVersion')
  final String? clientVersion;

  InterCliquePeerInfo({
    this.cliqueId,
    this.brokerId,
    this.groupNumPerBroker,
    this.address,
    this.isSynced,
    this.clientVersion,
  });

  factory InterCliquePeerInfo.fromJson(Map<String, dynamic> json) =>
      _$InterCliquePeerInfoFromJson(json);
  Map<String, dynamic> toJson() => _$InterCliquePeerInfoToJson(this);
}
