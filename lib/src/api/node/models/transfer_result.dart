import 'package:json_annotation/json_annotation.dart';

part 'transfer_result.g.dart';

@JsonSerializable(includeIfNull: false)
class TransferResult {
  @JsonKey(name: 'txId')
  final String? txId;
  @JsonKey(name: 'fromGroup')
  final num? fromGroup;
  @JsonKey(name: 'toGroup')
  final num? toGroup;

  TransferResult({
    this.txId,
    this.fromGroup,
    this.toGroup,
  });

  factory TransferResult.fromJson(Map<String, dynamic> json) =>
      _$TransferResultFromJson(json);
  Map<String, dynamic> toJson() => _$TransferResultToJson(this);
}
