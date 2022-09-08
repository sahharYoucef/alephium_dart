import 'package:json_annotation/json_annotation.dart';

import 'transaction_destination.dart';

part 'transfer.g.dart';

@JsonSerializable(includeIfNull: false)
class Transfer {
  @JsonKey(name: 'destinations')
  final List<TransactionDestination>? destinations;
  @JsonKey(name: 'gas')
  final num? gas;
  @JsonKey(name: 'gasPrice')
  final String? gasPrice;
  @JsonKey(name: 'utxosLimit')
  final num? utxosLimit;

  Transfer({
    this.destinations,
    this.gas,
    this.gasPrice,
    this.utxosLimit,
  });

  factory Transfer.fromJson(Map<String, dynamic> json) =>
      _$TransferFromJson(json);
  Map<String, dynamic> toJson() => _$TransferToJson(this);
}
