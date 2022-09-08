import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'addresses.g.dart';

@JsonSerializable(includeIfNull: false)
class Addresses {
  @JsonKey(name: 'addresses')
  final List<AddressInfo>? addresses;
  @JsonKey(name: 'activeAddress')
  final String? activeAddress;

  Addresses({
    this.addresses,
    this.activeAddress,
  });

  factory Addresses.fromJson(Map<String, dynamic> json) =>
      _$AddressesFromJson(json);

  Map<String, dynamic> toJson() => _$AddressesToJson(this);
}
