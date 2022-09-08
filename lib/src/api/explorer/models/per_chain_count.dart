import 'package:json_annotation/json_annotation.dart';

part 'per_chain_count.g.dart';

@JsonSerializable(includeIfNull: false)
class PerChainCount {
  @JsonKey(name: 'count')
  final int? count;
  @JsonKey(name: 'chainFrom')
  final int? chainFrom;
  @JsonKey(name: 'chainTo')
  final int? chainTo;

  PerChainCount({
    this.count,
    this.chainFrom,
    this.chainTo,
  });

  factory PerChainCount.fromJson(Map<String, dynamic> json) =>
      _$PerChainCountFromJson(json);
  Map<String, dynamic> toJson() => _$PerChainCountToJson(this);
}
