import 'package:json_annotation/json_annotation.dart';

import 'output_ref.dart';
import 'token.dart';

part 'utxo.g.dart';

@JsonSerializable(includeIfNull: false)
class Utxo {
  @JsonKey(name: 'ref')
  final OutputRef? ref;
  @JsonKey(name: 'amount')
  final String? amount;
  @JsonKey(name: 'tokens')
  final List<Token>? tokens;
  @JsonKey(name: 'lockTime')
  final int? lockTime;
  @JsonKey(name: 'additionalData')
  final String? additionalData;

  Utxo({
    this.ref,
    this.amount,
    this.tokens,
    this.lockTime,
    this.additionalData,
  });

  factory Utxo.fromJson(Map<String, dynamic> json) => _$UtxoFromJson(json);
  Map<String, dynamic> toJson() => _$UtxoToJson(this);
}
