import 'package:json_annotation/json_annotation.dart';

part 'fields_sig.g.dart';

@JsonSerializable(includeIfNull: false)
class FieldsSig {
  @JsonKey(name: 'signature')
  final String? signature;
  @JsonKey(name: 'types')
  final List<String>? types;

  FieldsSig({
    this.signature,
    this.types,
  });

  factory FieldsSig.fromJson(Map<String, dynamic> json) =>
      _$FieldsSigFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsSigToJson(this);
}
