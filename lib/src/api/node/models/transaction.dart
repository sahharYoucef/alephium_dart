import 'package:json_annotation/json_annotation.dart';

import 'output.dart';
import 'output_ref.dart';
import 'unsigned_tx.dart';

part 'transaction.g.dart';

@JsonSerializable(includeIfNull: false)
class Transaction {
  @JsonKey(name: 'unsigned')
  final UnsignedTx? unsigned;
  @JsonKey(name: 'scriptExecutionOk')
  final bool? scriptExecutionOk;
  @JsonKey(name: 'contractInputs')
  final List<OutputRef>? contractInputs;
  @JsonKey(name: 'generatedOutputs')
  final List<Output>? generatedOutputs;
  @JsonKey(name: 'inputSignatures')
  final List<String>? inputSignatures;
  @JsonKey(name: 'scriptSignatures')
  final List<String>? scriptSignatures;

  Transaction({
    this.unsigned,
    this.scriptExecutionOk,
    this.contractInputs,
    this.generatedOutputs,
    this.inputSignatures,
    this.scriptSignatures,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
  Map<String, dynamic> toJson() => _$TransactionToJson(this);
}
