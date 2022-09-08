import 'package:json_annotation/json_annotation.dart';

part 'change_active_address.g.dart';

@JsonSerializable(includeIfNull: false)
class ChangeActiveAddress {
  @JsonKey(name: 'address')
  final String? address;

  ChangeActiveAddress({
    this.address,
  });

  factory ChangeActiveAddress.fromJson(Map<String, dynamic> json) =>
      _$ChangeActiveAddressFromJson(json);

  Map<String, dynamic> toJson() => _$ChangeActiveAddressToJson(this);
}
