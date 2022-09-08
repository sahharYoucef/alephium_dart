import 'package:json_annotation/json_annotation.dart';

part 'submit_multisig.g.dart';

@JsonSerializable(includeIfNull: false)
class SubmitMultisig {
  @JsonKey(name: 'unsignedTx')
  final String? unsignedTx;
  @JsonKey(name: 'signatures')
  final List<String>? signatures;

  SubmitMultisig({
    this.unsignedTx,
    this.signatures,
  });

  factory SubmitMultisig.fromJson(Map<String, dynamic> json) =>
      _$SubmitMultisigFromJson(json);
  Map<String, dynamic> toJson() => _$SubmitMultisigToJson(this);
}
