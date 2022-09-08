import 'package:json_annotation/json_annotation.dart';

part 'submit_transaction.g.dart';

@JsonSerializable(includeIfNull: false)
class SubmitTransaction {
  @JsonKey(name: 'unsignedTx')
  final String? unsignedTx;
  @JsonKey(name: 'signature')
  final String? signature;

  SubmitTransaction({
    this.unsignedTx,
    this.signature,
  });

  factory SubmitTransaction.fromJson(Map<String, dynamic> json) =>
      _$SubmitTransactionFromJson(json);
  Map<String, dynamic> toJson() => _$SubmitTransactionToJson(this);
}
