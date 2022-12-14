import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:json_annotation/json_annotation.dart';

import 'input.dart';
import 'output.dart';

part 'transaction.g.dart';

@JsonSerializable(includeIfNull: false)
class ExplorerTransaction {
  @JsonKey(name: 'hash')
  final String? hash;
  @JsonKey(name: 'blockHash')
  final String? blockHash;
  @JsonKey(name: 'timestamp')
  final num? timeStamp;
  @JsonKey(name: 'inputs')
  final List<ExplorerInput>? inputs;
  @JsonKey(name: 'outputs')
  final List<ExplorerOutput>? outputs;
  @JsonKey(name: 'gasAmount')
  final int? gasAmount;
  @JsonKey(
      name: 'gasPrice',
      fromJson: fromJsonStringToBigInt,
      toJson: toJsonBigIntToString)
  final BigInt? gasPrice;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'lastSeen')
  final int? lastSeen;
  @JsonKey(name: 'chainFrom')
  final int? chainFrom;
  @JsonKey(name: 'chainTo')
  final int? chainTo;

  ExplorerTransaction({
    this.hash,
    this.blockHash,
    this.timeStamp,
    this.inputs,
    this.outputs,
    this.gasPrice,
    this.gasAmount,
    this.type,
    this.lastSeen,
    this.chainFrom,
    this.chainTo,
  });
  factory ExplorerTransaction.fromJson(Map<String, dynamic> json) =>
      _$ExplorerTransactionFromJson(json);
  Map<String, dynamic> toJson() => _$ExplorerTransactionToJson(this);
}
