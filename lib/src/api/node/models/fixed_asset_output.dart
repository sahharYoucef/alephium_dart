import 'package:json_annotation/json_annotation.dart';

import 'token.dart';

part 'fixed_asset_output.g.dart';

@JsonSerializable(includeIfNull: false)
class FixedAssetOutput {
  @JsonKey(name: 'hint')
  final num? hint;
  @JsonKey(name: 'key')
  final String? key;
  @JsonKey(name: 'attoAlphAmount')
  final String? attoAlphAmount;
  @JsonKey(name: 'tokens')
  final List<Token>? tokens;
  @JsonKey(name: 'lockTime')
  final int? lockTime;
  @JsonKey(name: 'additionalData')
  final String? additionalData;
  @JsonKey(name: 'address')
  final String? address;

  FixedAssetOutput({
    this.hint,
    this.key,
    this.attoAlphAmount,
    this.tokens,
    this.lockTime,
    this.additionalData,
    this.address,
  });

  factory FixedAssetOutput.fromJson(Map<String, dynamic> json) =>
      _$FixedAssetOutputFromJson(json);
  Map<String, dynamic> toJson() => _$FixedAssetOutputToJson(this);
}
