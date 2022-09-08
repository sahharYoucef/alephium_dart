import 'package:json_annotation/json_annotation.dart';

import 'output_ref.dart';

part 'input.g.dart';

@JsonSerializable(includeIfNull: false)
class ExplorerInput {
  @JsonKey(name: 'outputRef')
  final ExplorerOutputRef? outputRef;
  @JsonKey(name: 'unlockScript')
  final String? unlockScript;
  @JsonKey(name: 'txHashRef')
  final String? txHashRef;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'amount')
  final String? amount;

  ExplorerInput({
    this.outputRef,
    this.unlockScript,
    this.txHashRef,
    this.address,
    this.amount,
  });

  factory ExplorerInput.fromJson(Map<String, dynamic> json) =>
      _$ExplorerInputFromJson(json);
  Map<String, dynamic> toJson() => _$ExplorerInputToJson(this);
}
