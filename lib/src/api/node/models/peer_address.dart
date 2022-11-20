import 'package:json_annotation/json_annotation.dart';

part 'peer_address.g.dart';

@JsonSerializable(includeIfNull: false)
class PeerAddress {
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'restPort')
  final int? restPort;
  @JsonKey(name: 'wsPort')
  final int? wsPort;
  @JsonKey(name: 'minerApiPort')
  final int? minerApiPort;

  PeerAddress({
    this.address,
    this.restPort,
    this.wsPort,
    this.minerApiPort,
  });

  factory PeerAddress.fromJson(Map<String, dynamic> json) =>
      _$PeerAddressFromJson(json);

  Map<String, dynamic> toJson() => _$PeerAddressToJson(this);
}
