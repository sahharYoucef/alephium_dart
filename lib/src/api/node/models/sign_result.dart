import 'package:json_annotation/json_annotation.dart';

part 'sign_result.g.dart';

@JsonSerializable(includeIfNull: false)
class SignResult {
  @JsonKey(name: 'signature')
  final String? signature;

  SignResult({
    this.signature,
  });

  factory SignResult.fromJson(Map<String, dynamic> json) =>
      _$SignResultFromJson(json);

  Map<String, dynamic> toJson() => _$SignResultToJson(this);
}
