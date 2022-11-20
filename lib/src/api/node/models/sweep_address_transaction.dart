import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sweep_address_transaction.g.dart';

@JsonSerializable(includeIfNull: false)
class SweepAddressTransaction {
  @JsonKey(name: 'txId')
  final String? txId;
  @JsonKey(name: 'unsignedTx')
  final String? unsignedTx;
  @JsonKey(name: 'gasAmount')
  final num? gasAmount;
  @JsonKey(
      name: 'gasPrice',
      fromJson: fromJsonStringToNum,
      toJson: toJsonNumToString)
  final num? gasPrice;

  SweepAddressTransaction({
    this.txId,
    this.unsignedTx,
    this.gasAmount,
    this.gasPrice,
  });
  factory SweepAddressTransaction.fromJson(Map<String, dynamic> json) =>
      _$SweepAddressTransactionFromJson(json);
  Map<String, dynamic> toJson() => _$SweepAddressTransactionToJson(this);
}
