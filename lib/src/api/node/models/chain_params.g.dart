// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chain_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChainParams _$ChainParamsFromJson(Map<String, dynamic> json) => ChainParams(
      networkId: json['networkId'] as String?,
      numZerosAtLeastInHash: json['numZerosAtLeastInHash'] as num?,
      groupNumPerBroker: json['groupNumPerBroker'] as num?,
      groups: json['groups'] as num?,
    );

Map<String, dynamic> _$ChainParamsToJson(ChainParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('networkId', instance.networkId);
  writeNotNull('numZerosAtLeastInHash', instance.numZerosAtLeastInHash);
  writeNotNull('groupNumPerBroker', instance.groupNumPerBroker);
  writeNotNull('groups', instance.groups);
  return val;
}
