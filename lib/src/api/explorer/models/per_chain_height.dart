import 'package:json_annotation/json_annotation.dart';

part 'per_chain_height.g.dart';

@JsonSerializable(includeIfNull: false)
class PerChainHeight {
  @JsonKey(name: 'value')
  final num? value;
  @JsonKey(name: 'chainFrom')
  final num? chainFrom;
  @JsonKey(name: 'chainTo')
  final num? chainTo;
  @JsonKey(name: 'duration')
  final num? height;

  PerChainHeight({
    this.value,
    this.chainFrom,
    this.chainTo,
    this.height,
  });

  factory PerChainHeight.fromJson(Map<String, dynamic> json) =>
      _$PerChainHeightFromJson(json);
  Map<String, dynamic> toJson() => _$PerChainHeightToJson(this);
}
