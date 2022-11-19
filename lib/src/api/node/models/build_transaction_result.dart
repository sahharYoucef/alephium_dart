import 'package:json_annotation/json_annotation.dart';

part 'build_transaction_result.g.dart';

@JsonSerializable(includeIfNull: false)
class BuildTransactionResult {
  @JsonKey(name: 'unsignedTx')
  final String? unsignedTx;
  @JsonKey(name: 'fromGroup')
  final num? fromGroup;
  @JsonKey(name: 'toGroup')
  final num? toGroup;
  @JsonKey(name: 'txId')
  final String? txId;
  @JsonKey(name: 'gasPrice')
  final String? gasPrice;
  @JsonKey(name: 'gasAmount')
  final num? gasAmount;

  BuildTransactionResult({
    this.unsignedTx,
    this.fromGroup,
    this.toGroup,
    this.txId,
    this.gasPrice,
    this.gasAmount,
  });

  factory BuildTransactionResult.fromJson(Map<String, dynamic> json) =>
      _$BuildTransactionResultFromJson(json);

  Map<String, dynamic> toJson() => _$BuildTransactionResultToJson(this);
}

_fromJson(value) {
  return value.toString();
}
