import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:json_annotation/json_annotation.dart';

import 'token.dart';

part 'asset_output.g.dart';

@JsonSerializable(includeIfNull: false)
class AssetOutput {
  @JsonKey(name: 'hint')
  final int? hint;
  @JsonKey(name: 'key')
  final String? key;
  @JsonKey(
      name: 'attoAlphAmount',
      fromJson: fromJsonStringToBigInt,
      toJson: toJsonBigIntToString)
  final BigInt? attoAlphAmount;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'tokens')
  final List<Token>? tokens;
  @JsonKey(name: 'lockTime')
  final int? lockTime;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'type')
  final String? type;

  AssetOutput({
    this.attoAlphAmount,
    this.address,
    this.tokens,
    this.lockTime,
    this.message,
    this.type,
    this.hint,
    this.key,
  });

  factory AssetOutput.fromJson(Map<String, dynamic> json) =>
      _$AssetOutputFromJson(json);

  Map<String, dynamic> toJson() => _$AssetOutputToJson(this);
}
