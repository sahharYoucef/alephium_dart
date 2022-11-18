import 'package:json_annotation/json_annotation.dart';

part 'address_info.g.dart';

@JsonSerializable(includeIfNull: false)
class AddressInfo {
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'publicKey')
  final String? publicKey;
  @JsonKey(name: 'group')
  final num? group;
  @JsonKey(name: 'path')
  final String? path;

  AddressInfo({
    this.address,
    this.publicKey,
    this.group,
    this.path,
  });

  factory AddressInfo.fromJson(Map<String, dynamic> json) =>
      _$AddressInfoFromJson(json);

  Map<String, dynamic> toJson() => _$AddressInfoToJson(this);
}
