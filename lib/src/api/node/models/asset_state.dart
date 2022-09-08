import 'package:json_annotation/json_annotation.dart';

import 'token.dart';

part 'asset_state.g.dart';

@JsonSerializable(includeIfNull: false)
class AssetState {
  @JsonKey(name: 'alphAmount')
  final String? alphAmount;
  @JsonKey(name: 'tokens')
  final Token? tokens;

  AssetState({
    this.alphAmount,
    this.tokens,
  });

  factory AssetState.fromJson(Map<String, dynamic> json) =>
      _$AssetStateFromJson(json);
  Map<String, dynamic> toJson() => _$AssetStateToJson(this);
}
