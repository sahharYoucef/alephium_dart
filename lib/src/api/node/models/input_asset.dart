import 'package:json_annotation/json_annotation.dart';

import 'asset_state.dart';

part 'input_asset.g.dart';

@JsonSerializable(includeIfNull: false)
class InputAsset {
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'asset')
  final AssetState? asset;

  InputAsset({
    this.address,
    this.asset,
  });

  factory InputAsset.fromJson(Map<String, dynamic> json) =>
      _$InputAssetFromJson(json);
  Map<String, dynamic> toJson() => _$InputAssetToJson(this);
}
