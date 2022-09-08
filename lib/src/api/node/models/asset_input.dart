import 'package:json_annotation/json_annotation.dart';

import 'output_ref.dart';

part 'asset_input.g.dart';

@JsonSerializable(includeIfNull: false)
class AssetInput {
  @JsonKey(name: 'outputRef')
  final OutputRef? outputRef;
  @JsonKey(name: 'unlockScript')
  final String? unlockScript;

  AssetInput({
    this.outputRef,
    this.unlockScript,
  });
  factory AssetInput.fromJson(Map<String, dynamic> json) =>
      _$AssetInputFromJson(json);

  Map<String, dynamic> toJson() => _$AssetInputToJson(this);
}
