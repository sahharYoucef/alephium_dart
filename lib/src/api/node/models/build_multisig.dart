import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:json_annotation/json_annotation.dart';

import 'transaction_destination.dart';

part 'build_multisig.g.dart';

@JsonSerializable(includeIfNull: false)
class BuildMultisig {
  @JsonKey(name: 'fromPublicKeys')
  final List<String>? fromPublicKeys;
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
  @JsonKey(name: 'fromAddress')
  final String? fromAddress;

  BuildMultisig({
    this.fromPublicKeys,
    this.destinations,
    this.gasAmount,
    this.gasPrice,
    this.utxosLimit,
    this.fromAddress,
  });

  factory BuildMultisig.fromJson(Map<String, dynamic> json) =>
      _$BuildMultisigFromJson(json);

  Map<String, dynamic> toJson() => _$BuildMultisigToJson(this);
}
