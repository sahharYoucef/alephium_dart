import 'package:json_annotation/json_annotation.dart';

part 'output_ref.g.dart';

@JsonSerializable(includeIfNull: false)
class ExplorerOutputRef {
  @JsonKey(name: 'hint')
  final num? hint;
  @JsonKey(name: 'key')
  final String? key;

  ExplorerOutputRef({
    this.hint,
    this.key,
  });

  factory ExplorerOutputRef.fromJson(Map<String, dynamic> json) =>
      _$ExplorerOutputRefFromJson(json);

  Map<String, dynamic> toJson() => _$ExplorerOutputRefToJson(this);
}
