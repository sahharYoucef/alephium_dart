// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'miner_addresses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MinerAddresses _$MinerAddressesFromJson(Map<String, dynamic> json) =>
    MinerAddresses(
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$MinerAddressesToJson(MinerAddresses instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('addresses', instance.addresses);
  return val;
}
