import 'package:alephium_dart/src/api/node/models/asset_state.dart';
import 'package:json_annotation/json_annotation.dart';

part 'test_input_asset.g.dart';

@JsonSerializable(includeIfNull: false)
class TestInputAsset {
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'asset')
  final AssetState? asset;

  TestInputAsset({
    this.address,
    this.asset,
  });

  factory TestInputAsset.fromJson(Map<String, dynamic> json) =>
      _$TestInputAssetFromJson(json);
  Map<String, dynamic> toJson() => _$TestInputAssetToJson(this);
}
