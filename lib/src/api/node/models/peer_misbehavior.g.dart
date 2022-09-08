// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peer_misbehavior.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PeerMisbehavior _$PeerMisbehaviorFromJson(Map<String, dynamic> json) =>
    PeerMisbehavior(
      peer: json['peer'] as String?,
      status: json['status'] == null
          ? null
          : PeerStatus.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PeerMisbehaviorToJson(PeerMisbehavior instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('peer', instance.peer);
  writeNotNull('status', instance.status);
  return val;
}
