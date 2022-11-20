import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
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
  @JsonKey(name: 'gasAmount', includeIfNull: false)
  final int? gasAmount;
  @JsonKey(
      name: 'gasPrice',
      fromJson: fromJsonStringToBigInt,
      includeIfNull: false,
      toJson: toJsonBigIntToString)
  final BigInt? gasPrice;
  @JsonKey(name: 'targetBlockHash', includeIfNull: false)
  final String? targetBlockHash;

  BuildTransaction({
    this.fromPublicKey,
    this.destinations,
    this.utxos,
    this.gasAmount,
    this.gasPrice,
    this.targetBlockHash,
  });

  factory BuildTransaction.fromJson(Map<String, dynamic> json) =>
      _$BuildTransactionFromJson(json);

  Map<String, dynamic> toJson() => _$BuildTransactionToJson(this);
}
