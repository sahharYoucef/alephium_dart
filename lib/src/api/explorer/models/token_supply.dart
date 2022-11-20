import 'package:json_annotation/json_annotation.dart';

part 'token_supply.g.dart';

@JsonSerializable(includeIfNull: false)
class TokenSupply {
  @JsonKey(name: 'timestamp')
  final int? timestamp;
  @JsonKey(name: 'total')
  final String? total;
  @JsonKey(name: 'circulating')
  final String? circulating;
  @JsonKey(name: 'reserved')
  final String? reserved;
  @JsonKey(name: 'locked')
  final String? locked;
  @JsonKey(name: 'maximum')
  final String? maximum;

  TokenSupply({
    this.timestamp,
    this.total,
    this.circulating,
    this.reserved,
    this.locked,
    this.maximum,
  });

  factory TokenSupply.fromJson(Map<String, dynamic> json) =>
      _$TokenSupplyFromJson(json);
  Map<String, dynamic> toJson() => _$TokenSupplyToJson(this);
}
