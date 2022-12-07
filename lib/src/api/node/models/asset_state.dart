import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:json_annotation/json_annotation.dart';

import 'token.dart';

part 'asset_state.g.dart';

@JsonSerializable(includeIfNull: false)
class AssetState {
  @JsonKey(
      name: 'attoAlphAmount',
      fromJson: fromJsonStringToBigInt,
      toJson: toJsonBigIntToString)
  final BigInt? attoAlphAmount;
  @JsonKey(name: 'tokens')
  final List<Token>? tokens;

  AssetState({
    this.attoAlphAmount,
    this.tokens,
  });

  factory AssetState.fromJson(Map<String, dynamic> json) =>
      _$AssetStateFromJson(json);
  Map<String, dynamic> toJson() => _$AssetStateToJson(this);
}
