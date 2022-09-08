import 'package:json_annotation/json_annotation.dart';

import 'per_chain_count.dart';

part 'per_chain_timed_count.g.dart';

@JsonSerializable(includeIfNull: false)
class PerChainTimedCount {
  @JsonKey(name: 'timestamp')
  final int? timestamp;
  @JsonKey(name: 'totalCountPerChain')
  final List<PerChainCount>? totalCountPerChain;

  PerChainTimedCount({
    this.timestamp,
    this.totalCountPerChain,
  });

  factory PerChainTimedCount.fromJson(Map<String, dynamic> json) =>
      _$PerChainTimedCountFromJson(json);
  Map<String, dynamic> toJson() => _$PerChainTimedCountToJson(this);
}
