// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressInfo _$AddressInfoFromJson(Map<String, dynamic> json) => AddressInfo(
      address: json['address'] as String?,
      publicKey: json['publicKey'] as String?,
      group: json['group'] as num?,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$AddressInfoToJson(AddressInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('publicKey', instance.publicKey);
  writeNotNull('group', instance.group);
  writeNotNull('path', instance.path);
  return val;
}
