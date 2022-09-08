// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chain_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChainInfo _$ChainInfoFromJson(Map<String, dynamic> json) => ChainInfo(
      currentHeight: json['currentHeight'] as num?,
    );

Map<String, dynamic> _$ChainInfoToJson(ChainInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentHeight', instance.currentHeight);
  return val;
}
