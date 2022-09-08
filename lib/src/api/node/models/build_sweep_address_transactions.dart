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
  @JsonKey(name: 'gas')
  final num? gas;
  @JsonKey(name: 'gasPrice')
  final String? gasPrice;
  @JsonKey(name: 'utxosLimit')
  final num? utxosLimit;

  BuildSweepAddressTransactions({
    this.fromPublicKey,
    this.toAddress,
    this.lockTime,
    this.gas,
    this.gasPrice,
    this.utxosLimit,
  });

  factory BuildSweepAddressTransactions.fromJson(Map<String, dynamic> json) =>
      _$BuildSweepAddressTransactionsFromJson(json);

  Map<String, dynamic> toJson() => _$BuildSweepAddressTransactionsToJson(this);
}
