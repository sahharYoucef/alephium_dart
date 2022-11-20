import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:json_annotation/json_annotation.dart';

import 'token.dart';

part 'transaction_destination.g.dart';

@JsonSerializable(includeIfNull: false)
class TransactionDestination {
  @JsonKey(name: 'address', includeIfNull: false)
  final String? address;
  @JsonKey(
      name: 'attoAlphAmount',
      fromJson: fromJsonStringToBigInt,
      toJson: toJsonBigIntToString)
  final BigInt? attoAlphAmount;
  @JsonKey(name: 'tokens', includeIfNull: false)
  final List<Token>? tokens;
  @JsonKey(name: 'lockTime', includeIfNull: false)
  final int? lockTime;
  @JsonKey(name: 'message', includeIfNull: false)
  final String? message;

  TransactionDestination({
    this.address,
    this.attoAlphAmount,
    this.tokens,
    this.lockTime,
    this.message,
  });

  factory TransactionDestination.fromJson(Map<String, dynamic> json) =>
      _$TransactionDestinationFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionDestinationToJson(this);
}
