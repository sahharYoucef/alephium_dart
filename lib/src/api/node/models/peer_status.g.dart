// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peer_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PeerStatus _$PeerStatusFromJson(Map<String, dynamic> json) => PeerStatus(
      until: json['until'] as int?,
      value: json['value'] as int?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$PeerStatusToJson(PeerStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('until', instance.until);
  writeNotNull('value', instance.value);
  writeNotNull('type', instance.type);
  return val;
}
