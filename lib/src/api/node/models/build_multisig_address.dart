import 'package:json_annotation/json_annotation.dart';

part 'build_multisig_address.g.dart';

@JsonSerializable(includeIfNull: false)
class BuildMultisigAddress {
  @JsonKey(name: 'keys')
  final List<String>? keys;
  @JsonKey(name: 'mrequired')
  final int? mrequired;

  BuildMultisigAddress({
    this.keys,
    this.mrequired,
  });

  factory BuildMultisigAddress.fromJson(Map<String, dynamic> json) =>
      _$BuildMultisigAddressFromJson(json);

  Map<String, dynamic> toJson() => _$BuildMultisigAddressToJson(this);
}
