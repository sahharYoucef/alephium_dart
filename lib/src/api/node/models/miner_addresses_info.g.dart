// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'miner_addresses_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MinerAddressesInfo _$MinerAddressesInfoFromJson(Map<String, dynamic> json) =>
    MinerAddressesInfo(
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => AddressInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MinerAddressesInfoToJson(MinerAddressesInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('addresses', instance.addresses);
  return val;
}
