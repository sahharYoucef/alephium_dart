// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addresses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Addresses _$AddressesFromJson(Map<String, dynamic> json) => Addresses(
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => AddressInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      activeAddress: json['activeAddress'] as String?,
    );

Map<String, dynamic> _$AddressesToJson(Addresses instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('addresses', instance.addresses);
  writeNotNull('activeAddress', instance.activeAddress);
  return val;
}
