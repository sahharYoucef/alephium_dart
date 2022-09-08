import 'package:json_annotation/json_annotation.dart';

part 'sign.g.dart';

@JsonSerializable(includeIfNull: false)
class Sign {
  @JsonKey(name: 'data')
  final String? data;

  Sign({
    this.data,
  });

  factory Sign.fromJson(Map<String, dynamic> json) => _$SignFromJson(json);

  Map<String, dynamic> toJson() => _$SignToJson(this);
}
