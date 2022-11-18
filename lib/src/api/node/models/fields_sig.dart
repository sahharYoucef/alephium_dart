import 'package:json_annotation/json_annotation.dart';

part 'fields_sig.g.dart';

@JsonSerializable(includeIfNull: false)
class FieldsSig {
  @JsonKey(name: 'signature')
  final String? signature;
  @JsonKey(name: 'types')
  final List<String>? types;
  @JsonKey(name: 'names')
  final List<String>? names;
  @JsonKey(name: 'isMutable')
  final List<bool>? isMutable;

  FieldsSig({
    this.signature,
    this.types,
    this.isMutable,
    this.names,
  });

  factory FieldsSig.fromJson(Map<String, dynamic> json) =>
      _$FieldsSigFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsSigToJson(this);
}
