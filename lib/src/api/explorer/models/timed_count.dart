import 'package:json_annotation/json_annotation.dart';

part 'timed_count.g.dart';

@JsonSerializable(includeIfNull: false)
class TimedCount {
  @JsonKey(name: 'timestamp')
  final int? timestamp;
  @JsonKey(name: 'totalCountAllChains')
  final int? totalCountAllChains;

  TimedCount({
    this.timestamp,
    this.totalCountAllChains,
  });

  factory TimedCount.fromJson(Map<String, dynamic> json) =>
      _$TimedCountFromJson(json);

  Map<String, dynamic> toJson() => _$TimedCountToJson(this);
}
