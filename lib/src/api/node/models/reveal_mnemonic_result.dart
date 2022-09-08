import 'package:json_annotation/json_annotation.dart';

part 'reveal_mnemonic_result.g.dart';

@JsonSerializable(includeIfNull: false)
class RevealMnemonicResult {
  @JsonKey(name: 'mnemonic')
  final String? mnemonic;

  RevealMnemonicResult({
    this.mnemonic,
  });

  factory RevealMnemonicResult.fromJson(Map<String, dynamic> json) =>
      _$RevealMnemonicResultFromJson(json);

  Map<String, dynamic> toJson() => _$RevealMnemonicResultToJson(this);
}
