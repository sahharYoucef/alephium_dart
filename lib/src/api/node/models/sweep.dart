import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sweep.g.dart';

@JsonSerializable(includeIfNull: false)
class Sweep {
  @JsonKey(name: 'toAddress')
  final String? toAddress;
  @JsonKey(name: 'lockTime')
  final int? lockTime;
  @JsonKey(name: 'gasAmount')
  final int? gasAmount;
  @JsonKey(
      name: 'gasPrice',
      fromJson: fromJsonStringToNum,
      toJson: toJsonNumToString)
  final num? gasPrice;
  @JsonKey(name: 'utxosLimit')
  final int? utxosLimit;

  Sweep({
    this.toAddress,
    this.lockTime,
    this.gasAmount,
    this.gasPrice,
    this.utxosLimit,
  });

  factory Sweep.fromJson(Map<String, dynamic> json) => _$SweepFromJson(json);
  Map<String, dynamic> toJson() => _$SweepToJson(this);
}
