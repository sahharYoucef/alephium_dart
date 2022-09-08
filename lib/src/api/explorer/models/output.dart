import 'package:json_annotation/json_annotation.dart';

part 'output.g.dart';

@JsonSerializable(includeIfNull: false)
class ExplorerOutput {
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'hint')
  final int? hint;
  @JsonKey(name: 'key')
  final String? key;
  @JsonKey(name: 'lockTime')
  final int? lockTime;
  @JsonKey(name: 'spent')
  final String? spent;

  ExplorerOutput({
    this.address,
    this.amount,
    this.hint,
    this.key,
    this.lockTime,
    this.spent,
  });

  factory ExplorerOutput.fromJson(Map<String, dynamic> json) =>
      _$ExplorerOutputFromJson(json);
  Map<String, dynamic> toJson() => _$ExplorerOutputToJson(this);
}
