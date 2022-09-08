import 'package:json_annotation/json_annotation.dart';

part 'hashrate.g.dart';

@JsonSerializable(includeIfNull: false)
class Hashrate {
  @JsonKey(name: 'hashrate')
  final String? hashrate;
  @JsonKey(name: 'value')
  final String? value;
  @JsonKey(name: 'timestamp')
  final int? timestamp;

  Hashrate({
    this.hashrate,
    this.value,
    this.timestamp,
  });

  factory Hashrate.fromJson(Map<String, dynamic> json) =>
      _$HashrateFromJson(json);
  Map<String, dynamic> toJson() => _$HashrateToJson(this);
}
