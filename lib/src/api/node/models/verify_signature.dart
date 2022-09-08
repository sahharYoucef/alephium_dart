import 'package:json_annotation/json_annotation.dart';

part 'verify_signature.g.dart';

@JsonSerializable(includeIfNull: false)
class VerifySignature {
  @JsonKey(name: 'signature')
  final String? signature;
  @JsonKey(name: 'publicKey')
  final String? publicKey;
  @JsonKey(name: 'data')
  final String? data;

  VerifySignature({
    this.signature,
    this.publicKey,
    this.data,
  });

  factory VerifySignature.fromJson(Map<String, dynamic> json) =>
      _$VerifySignatureFromJson(json);
  Map<String, dynamic> toJson() => _$VerifySignatureToJson(this);
}
