import 'package:json_annotation/json_annotation.dart';

import 'token.dart';

part 'output.g.dart';

@JsonSerializable(includeIfNull: false)
class Output {
  @JsonKey(name: 'hint')
  final int? hint;
  @JsonKey(name: 'key')
  final String? key;
  @JsonKey(name: 'attoAlphAmount')
  final String? attoAlphAmount;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'tokens')
  final Token? tokens;
  @JsonKey(name: 'lockTime')
  final int? lockTime;
  @JsonKey(name: 'additionalData')
  final String? additionalData;
  @JsonKey(name: 'type')
  final String? type;

  Output({
    this.attoAlphAmount,
    this.address,
    this.tokens,
    this.lockTime,
    this.additionalData,
    this.type,
    this.hint,
    this.key,
  });

  factory Output.fromJson(Map<String, dynamic> json) => _$OutputFromJson(json);

  Map<String, dynamic> toJson() => _$OutputToJson(this);
}
