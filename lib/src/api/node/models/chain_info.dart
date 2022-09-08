import 'package:json_annotation/json_annotation.dart';

part 'chain_info.g.dart';

@JsonSerializable(includeIfNull: false)
class ChainInfo {
  @JsonKey(name: 'currentHeight')
  final num? currentHeight;

  ChainInfo({
    this.currentHeight,
  });

  factory ChainInfo.fromJson(Map<String, dynamic> json) =>
      _$ChainInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ChainInfoToJson(this);
}
