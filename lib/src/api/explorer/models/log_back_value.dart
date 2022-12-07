import 'package:json_annotation/json_annotation.dart';

part 'log_back_value.g.dart';

@JsonSerializable(includeIfNull: false)
class LogBackValue {
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'level')
  final String? level;

  LogBackValue({
    this.name,
    this.level,
  });

  factory LogBackValue.fromJson(Map<String, dynamic> json) =>
      _$LogBackValueFromJson(json);
  Map<String, dynamic> toJson() => _$LogBackValueToJson(this);
}
