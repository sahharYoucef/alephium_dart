import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'miner_addresses_info.g.dart';

@JsonSerializable(includeIfNull: false)
class MinerAddressesInfo {
  @JsonKey(name: 'addresses')
  final List<AddressInfo>? addresses;

  MinerAddressesInfo({
    this.addresses,
  });

  factory MinerAddressesInfo.fromJson(Map<String, dynamic> json) =>
      _$MinerAddressesInfoFromJson(json);
  Map<String, dynamic> toJson() => _$MinerAddressesInfoToJson(this);
}
