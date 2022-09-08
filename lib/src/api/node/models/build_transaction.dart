import 'package:json_annotation/json_annotation.dart';

import 'transaction_destination.dart';
import 'output_ref.dart';

part 'build_transaction.g.dart';

@JsonSerializable(includeIfNull: false)
class BuildTransaction {
  @JsonKey(name: 'fromPublicKey', includeIfNull: false)
  final String? fromPublicKey;
  @JsonKey(name: 'destinations', includeIfNull: false)
  final List<TransactionDestination>? destinations;
  @JsonKey(name: 'utxos', includeIfNull: false)
  final List<OutputRef>? utxos;
  @JsonKey(name: 'gas', includeIfNull: false)
  final num? gas;
  @JsonKey(name: 'gasPrice', includeIfNull: false)
  final String? gasPrice;
  @JsonKey(name: 'utxosLimit', includeIfNull: false)
  final num? utxosLimit;

  BuildTransaction({
    this.fromPublicKey,
    this.destinations,
    this.utxos,
    this.gas,
    this.gasPrice,
    this.utxosLimit,
  });

  factory BuildTransaction.fromJson(Map<String, dynamic> json) =>
      _$BuildTransactionFromJson(json);

  Map<String, dynamic> toJson() => _$BuildTransactionToJson(this);
}
