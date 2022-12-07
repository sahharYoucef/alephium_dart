import 'package:json_annotation/json_annotation.dart';
part 'function_sig.g.dart';

@JsonSerializable(includeIfNull: false)
class FunctionSig {
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'signature')
  final String? signature;
  @JsonKey(name: 'useAssetsInContract')
  final bool? useAssetsInContract;
  @JsonKey(name: 'isPublic')
  final String? isPublic;
  @JsonKey(name: 'argTypes')
  final List<String>? argTypes;
  @JsonKey(name: 'returnTypes')
  final List<String>? returnTypes;
  @JsonKey(name: 'paramTypes')
  final List<String>? paramTypes;
  @JsonKey(name: 'paramIsMutable')
  final List<bool>? paramIsMutable;
  @JsonKey(name: 'paramNames')
  final List<String>? paramNames;

  FunctionSig({
    this.name,
    this.signature,
    this.argTypes,
    this.returnTypes,
    this.isPublic,
    this.paramIsMutable,
    this.paramNames,
    this.paramTypes,
    this.useAssetsInContract,
  });

  factory FunctionSig.fromJson(Map<String, dynamic> json) =>
      _$FunctionSigFromJson(json);

  Map<String, dynamic> toJson() => _$FunctionSigToJson(this);
}
