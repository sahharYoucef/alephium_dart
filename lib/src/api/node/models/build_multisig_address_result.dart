import 'package:json_annotation/json_annotation.dart';

part 'build_multisig_address_result.g.dart';

@JsonSerializable(includeIfNull: false)
class BuildMultisigAddressResult {
  @JsonKey(name: 'address')
  final String? address;

  BuildMultisigAddressResult({
    this.address,
  });

  factory BuildMultisigAddressResult.fromJson(Map<String, dynamic> json) =>
      _$BuildMultisigAddressResultFromJson(json);

  Map<String, dynamic> toJson() => _$BuildMultisigAddressResultToJson(this);
}
