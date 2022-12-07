import 'package:json_annotation/json_annotation.dart';

part 'broker_info.g.dart';

@JsonSerializable(includeIfNull: false)
class BrokerInfo {
  @JsonKey(name: 'brokerId')
  final String? brokerId;
  @JsonKey(name: 'brokerNum')
  final num? brokerNum;
  @JsonKey(name: 'address')
  final Map<String, dynamic>? address;
  @JsonKey(name: 'cliqueId')
  final String? cliqueId;

  BrokerInfo({
    this.brokerId,
    this.brokerNum,
    this.address,
    this.cliqueId,
  });

  factory BrokerInfo.fromJson(Map<String, dynamic> json) =>
      _$BrokerInfoFromJson(json);

  Map<String, dynamic> toJson() => _$BrokerInfoToJson(this);
}
