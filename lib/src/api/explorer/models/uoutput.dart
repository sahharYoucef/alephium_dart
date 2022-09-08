import 'package:json_annotation/json_annotation.dart';

part 'uoutput.g.dart';

@JsonSerializable(includeIfNull: false)
class UOutput {
  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'lockTime')
  final int? lockTime;

  UOutput({
    this.amount,
    this.address,
    this.lockTime,
  });

  factory UOutput.fromJson(Map<String, dynamic> json) =>
      _$UOutputFromJson(json);
  Map<String, dynamic> toJson() => _$UOutputToJson(this);
}
