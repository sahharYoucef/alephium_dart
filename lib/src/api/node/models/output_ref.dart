import 'package:json_annotation/json_annotation.dart';

part 'output_ref.g.dart';

@JsonSerializable(includeIfNull: false)
class OutputRef {
  @JsonKey(name: 'hint')
  final num? hint;
  @JsonKey(name: 'key')
  final String? key;

  OutputRef({
    this.hint,
    this.key,
  });

  factory OutputRef.fromJson(Map<String, dynamic> json) =>
      _$OutputRefFromJson(json);

  Map<String, dynamic> toJson() => _$OutputRefToJson(this);
}
