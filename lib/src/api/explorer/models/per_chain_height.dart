import 'package:json_annotation/json_annotation.dart';

part 'per_chain_height.g.dart';

@JsonSerializable(includeIfNull: false)
class PerChainHeight {
  @JsonKey(name: 'value')
  final num? value;
  @JsonKey(name: 'chainFrom')
  final int? chainFrom;
  @JsonKey(name: 'chainTo')
  final int? chainTo;
  @JsonKey(name: 'duration')
  final int? height;

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
