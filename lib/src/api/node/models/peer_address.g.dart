// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peer_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PeerAddress _$PeerAddressFromJson(Map<String, dynamic> json) => PeerAddress(
      address: json['address'] as String?,
      restPort: json['restPort'] as int?,
      wsPort: json['wsPort'] as int?,
      minerApiPort: json['minerApiPort'] as int?,
    );

Map<String, dynamic> _$PeerAddressToJson(PeerAddress instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('restPort', instance.restPort);
  writeNotNull('wsPort', instance.wsPort);
  writeNotNull('minerApiPort', instance.minerApiPort);
  return val;
}
