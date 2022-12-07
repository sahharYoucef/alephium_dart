// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_input_asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestInputAsset _$TestInputAssetFromJson(Map<String, dynamic> json) =>
    TestInputAsset(
      address: json['address'] as String?,
      asset: json['asset'] == null
          ? null
          : AssetState.fromJson(json['asset'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TestInputAssetToJson(TestInputAsset instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('asset', instance.asset);
  return val;
}
