import 'package:json_annotation/json_annotation.dart';

part 'chain_params.g.dart';

@JsonSerializable(includeIfNull: false)
class ChainParams {
  @JsonKey(name: 'networkId')
  final String? networkId;
  @JsonKey(name: 'numZerosAtLeastInHash')
  final int? numZerosAtLeastInHash;
  @JsonKey(name: 'groupNumPerBroker')
  final int? groupNumPerBroker;
  @JsonKey(name: 'groups')
  final int? groups;

  ChainParams({
    this.networkId,
    this.numZerosAtLeastInHash,
    this.groupNumPerBroker,
    this.groups,
  });

  factory ChainParams.fromJson(Map<String, dynamic> json) =>
      _$ChainParamsFromJson(json);

  Map<String, dynamic> toJson() => _$ChainParamsToJson(this);
}
