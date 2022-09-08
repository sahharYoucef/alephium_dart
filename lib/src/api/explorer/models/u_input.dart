import 'package:json_annotation/json_annotation.dart';

import 'output_ref.dart';

part 'u_input.g.dart';

@JsonSerializable(includeIfNull: false)
class UInput {
  @JsonKey(name: 'outputRef')
  final ExplorerOutputRef? outputRef;
  @JsonKey(name: 'unlockScript')
  final String? unlockScript;

  UInput({
    this.outputRef,
    this.unlockScript,
  });

  factory UInput.fromJson(Map<String, dynamic> json) => _$UInputFromJson(json);
  Map<String, dynamic> toJson() => _$UInputToJson(this);
}
