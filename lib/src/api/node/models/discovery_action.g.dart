// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discovery_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscoveryAction _$DiscoveryActionFromJson(Map<String, dynamic> json) =>
    DiscoveryAction(
      peers:
          (json['peers'] as List<dynamic>?)?.map((e) => e as String).toList(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$DiscoveryActionToJson(DiscoveryAction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('peers', instance.peers);
  writeNotNull('type', instance.type);
  return val;
}
