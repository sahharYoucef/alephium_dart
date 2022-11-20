import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:json_annotation/json_annotation.dart';

part 'build_sweep_address_transactions.g.dart';

@JsonSerializable(includeIfNull: false)
class BuildSweepAddressTransactions {
  @JsonKey(name: 'fromPublicKey')
  final String? fromPublicKey;
  @JsonKey(name: 'toAddress')
  final String? toAddress;
  @JsonKey(name: 'lockTime')
  final num? lockTime;
  @JsonKey(name: 'gasAmount')
  final num? gasAmount;
  @JsonKey(
      name: 'gasPrice',
      fromJson: fromJsonStringToNum,
      toJson: toJsonNumToString)
  final num? gasPrice;
  @JsonKey(name: 'utxosLimit')
  final num? utxosLimit;

  BuildSweepAddressTransactions({
    this.fromPublicKey,
    this.toAddress,
    this.lockTime,
    this.gasAmount,
    this.gasPrice,
    this.utxosLimit,
  });

  factory BuildSweepAddressTransactions.fromJson(Map<String, dynamic> json) =>
      _$BuildSweepAddressTransactionsFromJson(json);

  Map<String, dynamic> toJson() => _$BuildSweepAddressTransactionsToJson(this);
}
