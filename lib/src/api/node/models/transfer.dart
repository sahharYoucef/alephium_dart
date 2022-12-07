import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:json_annotation/json_annotation.dart';

import 'transaction_destination.dart';

part 'transfer.g.dart';

@JsonSerializable(includeIfNull: false)
class Transfer {
  @JsonKey(name: 'destinations')
  final List<TransactionDestination>? destinations;
  @JsonKey(name: 'gasAmount')
  final int? gasAmount;
  @JsonKey(
      name: 'gasPrice',
      fromJson: fromJsonStringToBigInt,
      toJson: toJsonBigIntToString)
  final BigInt? gasPrice;
  @JsonKey(name: 'utxosLimit')
  final int? utxosLimit;

  Transfer({
    this.destinations,
    this.gasAmount,
    this.gasPrice,
    this.utxosLimit,
  });

  factory Transfer.fromJson(Map<String, dynamic> json) =>
      _$TransferFromJson(json);
  Map<String, dynamic> toJson() => _$TransferToJson(this);
}
