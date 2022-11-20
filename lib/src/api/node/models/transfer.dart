import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:json_annotation/json_annotation.dart';

import 'transaction_destination.dart';

part 'transfer.g.dart';

@JsonSerializable(includeIfNull: false)
class Transfer {
  @JsonKey(name: 'destinations')
  final List<TransactionDestination>? destinations;
  @JsonKey(name: 'gasAmount')
  final num? gasAmount;
  @JsonKey(
      name: 'gasPrice',
      fromJson: fromJsonStringToNum,
      toJson: toJsonNumToString)
  final num? gasPrice;
  @JsonKey(name: 'utxosLimit')
  final num? utxosLimit;

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
