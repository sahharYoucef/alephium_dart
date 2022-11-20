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
  final num? gasAmount;
  @JsonKey(
      name: 'gasPrice',
      fromJson: fromJsonStringToNum,
      toJson: toJsonNumToString)
  final num? gasPrice;
  @JsonKey(name: 'utxosLimit')
  final num? utxosLimit;

  BuildMultisig({
    this.fromPublicKeys,
    this.destinations,
    this.gasAmount,
    this.gasPrice,
    this.utxosLimit,
  });

  factory BuildMultisig.fromJson(Map<String, dynamic> json) =>
      _$BuildMultisigFromJson(json);

  Map<String, dynamic> toJson() => _$BuildMultisigToJson(this);
}
