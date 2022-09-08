import 'package:json_annotation/json_annotation.dart';

import 'sweep_address_transaction.dart';

part 'build_sweep_address_transactions_result.g.dart';

@JsonSerializable(includeIfNull: false)
class BuildSweepAddressTransactionsResult {
  @JsonKey(name: 'unsignedTxs')
  final List<SweepAddressTransaction>? unsignedTxs;
  @JsonKey(name: 'fromGroup')
  final num? fromGroup;
  @JsonKey(name: 'toGroup')
  final num? toGroup;

  BuildSweepAddressTransactionsResult({
    this.unsignedTxs,
    this.fromGroup,
    this.toGroup,
  });

  factory BuildSweepAddressTransactionsResult.fromJson(
          Map<String, dynamic> json) =>
      _$BuildSweepAddressTransactionsResultFromJson(json);
  Map<String, dynamic> toJson() =>
      _$BuildSweepAddressTransactionsResultToJson(this);
}
