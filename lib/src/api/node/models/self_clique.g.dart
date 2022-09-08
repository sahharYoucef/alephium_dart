// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'self_clique.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelfClique _$SelfCliqueFromJson(Map<String, dynamic> json) => SelfClique(
      cliqueId: json['cliqueId'] as String?,
      nodes: (json['nodes'] as List<dynamic>?)
          ?.map((e) => PeerAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      selfReady: json['selfReady'] as bool?,
      synced: json['synced'] as bool?,
    );

Map<String, dynamic> _$SelfCliqueToJson(SelfClique instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cliqueId', instance.cliqueId);
  writeNotNull('nodes', instance.nodes);
  writeNotNull('selfReady', instance.selfReady);
  writeNotNull('synced', instance.synced);
  return val;
}
