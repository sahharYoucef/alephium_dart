// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NodeInfo _$NodeInfoFromJson(Map<String, dynamic> json) => NodeInfo(
      buildInfo: json['buildInfo'] == null
          ? null
          : BuildInfo.fromJson(json['buildInfo'] as Map<String, dynamic>),
      upnp: json['upnp'] as bool?,
      externalAddress: json['externalAddress'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$NodeInfoToJson(NodeInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('buildInfo', instance.buildInfo);
  writeNotNull('upnp', instance.upnp);
  writeNotNull('externalAddress', instance.externalAddress);
  return val;
}
