import 'package:json_annotation/json_annotation.dart';
part 'val.g.dart';

@JsonSerializable(includeIfNull: false)
class Val {
  @JsonKey(name: 'value')
  final String? value;
  @JsonKey(name: 'type')
  final String? type;

  Val({
    this.value,
    this.type,
  });

  factory Val.fromJson(Map<String, dynamic> json) => _$ValFromJson(json);
  Map<String, dynamic> toJson() => _$ValToJson(this);
}
