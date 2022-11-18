// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inter_clique_peer_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InterCliquePeerInfo _$InterCliquePeerInfoFromJson(Map<String, dynamic> json) =>
    InterCliquePeerInfo(
      cliqueId: json['cliqueId'] as String?,
      brokerId: json['brokerId'] as num?,
      groupNumPerBroker: json['groupNumPerBroker'] as num?,
      address: json['address'] as Map<String, dynamic>?,
      isSynced: json['isSynced'] as bool?,
      clientVersion: json['clientVersion'] as String?,
    );

Map<String, dynamic> _$InterCliquePeerInfoToJson(InterCliquePeerInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cliqueId', instance.cliqueId);
  writeNotNull('brokerId', instance.brokerId);
  writeNotNull('groupNumPerBroker', instance.groupNumPerBroker);
  writeNotNull('address', instance.address);
  writeNotNull('isSynced', instance.isSynced);
  writeNotNull('clientVersion', instance.clientVersion);
  return val;
}
