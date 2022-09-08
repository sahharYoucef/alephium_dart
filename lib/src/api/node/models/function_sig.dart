import 'package:json_annotation/json_annotation.dart';
part 'function_sig.g.dart';

@JsonSerializable(includeIfNull: false)
class FunctionSig {
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'signature')
  final String? signature;
  @JsonKey(name: 'argTypes')
  final List<String>? argTypes;
  @JsonKey(name: 'returnTypes')
  final List<String>? returnTypes;

  FunctionSig({
    this.name,
    this.signature,
    this.argTypes,
    this.returnTypes,
  });

  factory FunctionSig.fromJson(Map<String, dynamic> json) =>
      _$FunctionSigFromJson(json);

  Map<String, dynamic> toJson() => _$FunctionSigToJson(this);
}
