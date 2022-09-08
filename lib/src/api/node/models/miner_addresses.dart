import 'package:json_annotation/json_annotation.dart';

part 'miner_addresses.g.dart';

@JsonSerializable(includeIfNull: false)
class MinerAddresses {
  @JsonKey(name: 'addresses')
  final List<String>? addresses;

  MinerAddresses({
    this.addresses,
  });

  factory MinerAddresses.fromJson(Map<String, dynamic> json) =>
      _$MinerAddressesFromJson(json);

  Map<String, dynamic> toJson() => _$MinerAddressesToJson(this);
}
