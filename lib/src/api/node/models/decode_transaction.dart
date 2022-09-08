import 'package:json_annotation/json_annotation.dart';

part 'decode_transaction.g.dart';

@JsonSerializable(includeIfNull: false)
class DecodeTransaction {
  @JsonKey(name: 'unsignedTx')
  final String? unsignedTx;

  DecodeTransaction({
    this.unsignedTx,
  });

  factory DecodeTransaction.fromJson(Map<String, dynamic> json) =>
      _$DecodeTransactionFromJson(json);

  Map<String, dynamic> toJson() => _$DecodeTransactionToJson(this);
}
