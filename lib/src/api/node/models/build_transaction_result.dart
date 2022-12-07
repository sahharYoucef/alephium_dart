import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:json_annotation/json_annotation.dart';

part 'build_transaction_result.g.dart';

@JsonSerializable(includeIfNull: false)
class BuildTransactionResult {
  @JsonKey(name: 'unsignedTx')
  final String? unsignedTx;
  @JsonKey(name: 'fromGroup')
  final int? fromGroup;
  @JsonKey(name: 'toGroup')
  final int? toGroup;
  @JsonKey(name: 'txId')
  final String? txId;
  @JsonKey(
      name: 'gasPrice',
      fromJson: fromJsonStringToBigInt,
      toJson: toJsonBigIntToString)
  final BigInt? gasPrice;
  @JsonKey(name: 'gasAmount')
  final int? gasAmount;

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
