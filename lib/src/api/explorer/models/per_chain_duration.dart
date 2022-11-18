import 'package:json_annotation/json_annotation.dart';

part 'per_chain_duration.g.dart';

@JsonSerializable(includeIfNull: false)
class PerChainDuration {
  @JsonKey(name: 'value')
  final num? value;
  @JsonKey(name: 'chainFrom')
  final num? chainFrom;
  @JsonKey(name: 'chainTo')
  final num? chainTo;
  @JsonKey(name: 'duration')
  final num? duration;

  PerChainDuration({
    this.value,
    this.chainFrom,
    this.chainTo,
    this.duration,
  });

  factory PerChainDuration.fromJson(Map<String, dynamic> json) =>
      _$PerChainDurationFromJson(json);
  Map<String, dynamic> toJson() => _$PerChainDurationToJson(this);
}
