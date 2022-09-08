import 'package:json_annotation/json_annotation.dart';

part 'sweep.g.dart';

@JsonSerializable(includeIfNull: false)
class Sweep {
  @JsonKey(name: 'toAddress')
  final String? toAddress;
  @JsonKey(name: 'lockTime')
  final int? lockTime;
  @JsonKey(name: 'gas')
  final int? gas;
  @JsonKey(name: 'gasPrice')
  final String? gasPrice;
  @JsonKey(name: 'utxosLimit')
  final int? utxosLimit;

  Sweep({
    this.toAddress,
    this.lockTime,
    this.gas,
    this.gasPrice,
    this.utxosLimit,
  });

  factory Sweep.fromJson(Map<String, dynamic> json) => _$SweepFromJson(json);
  Map<String, dynamic> toJson() => _$SweepToJson(this);
}
