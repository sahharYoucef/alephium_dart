import 'package:json_annotation/json_annotation.dart';

part 'tx_result.g.dart';

@JsonSerializable(includeIfNull: false)
class TxResult {
  @JsonKey(name: 'txId')
  final String? txId;
  @JsonKey(name: 'fromGroup')
  final int? fromGroup;
  @JsonKey(name: 'toGroup')
  final int? toGroup;

  TxResult({
    this.txId,
    this.fromGroup,
    this.toGroup,
  });

  factory TxResult.fromJson(Map<String, dynamic> json) =>
      _$TxResultFromJson(json);
  Map<String, dynamic> toJson() => _$TxResultToJson(this);
}
