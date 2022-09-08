import 'package:json_annotation/json_annotation.dart';

part 'script.g.dart';

@JsonSerializable(includeIfNull: false)
class Script {
  @JsonKey(name: 'code')
  final String? code;

  Script({
    this.code,
  });

  factory Script.fromJson(Map<String, dynamic> json) => _$ScriptFromJson(json);

  Map<String, dynamic> toJson() => _$ScriptToJson(this);
}
