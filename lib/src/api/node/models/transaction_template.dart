import 'package:json_annotation/json_annotation.dart';

import 'unsigned_tx.dart';

part 'transaction_template.g.dart';

@JsonSerializable(includeIfNull: false)
class TransactionTemplate {
  @JsonKey(name: 'unsigned')
  final UnsignedTx? unsigned;
  @JsonKey(name: 'inputSignatures')
  final List<String>? inputSignatures;
  @JsonKey(name: 'scriptSignatures')
  final List<String>? scriptSignatures;

  TransactionTemplate({
    this.unsigned,
    this.inputSignatures,
    this.scriptSignatures,
  });

  factory TransactionTemplate.fromJson(Map<String, dynamic> json) =>
      _$TransactionTemplateFromJson(json);
  Map<String, dynamic> toJson() => _$TransactionTemplateToJson(this);
}
