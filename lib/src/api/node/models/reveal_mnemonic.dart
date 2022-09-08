import 'package:json_annotation/json_annotation.dart';

part 'reveal_mnemonic.g.dart';

@JsonSerializable(includeIfNull: false)
class RevealMnemonic {
  @JsonKey(name: 'password')
  final String? password;

  RevealMnemonic({
    this.password,
  });

  factory RevealMnemonic.fromJson(Map<String, dynamic> json) =>
      _$RevealMnemonicFromJson(json);

  Map<String, dynamic> toJson() => _$RevealMnemonicToJson(this);
}
