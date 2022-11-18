// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'broker_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrokerInfo _$BrokerInfoFromJson(Map<String, dynamic> json) => BrokerInfo(
      brokerId: json['brokerId'] as String?,
      brokerNum: json['brokerNum'] as num?,
      address: json['address'] as Map<String, dynamic>?,
      cliqueId: json['cliqueId'] as String?,
    );

Map<String, dynamic> _$BrokerInfoToJson(BrokerInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('brokerId', instance.brokerId);
  writeNotNull('brokerNum', instance.brokerNum);
  writeNotNull('address', instance.address);
  writeNotNull('cliqueId', instance.cliqueId);
  return val;
}
