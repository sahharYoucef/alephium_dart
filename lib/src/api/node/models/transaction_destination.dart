import 'package:json_annotation/json_annotation.dart';

import 'token.dart';

part 'transaction_destination.g.dart';

@JsonSerializable(includeIfNull: false)
class TransactionDestination {
  @JsonKey(name: 'address', includeIfNull: false)
  final String? address;
  @JsonKey(name: 'attoAlphAmount', includeIfNull: false)
  final String? attoAlphAmount;
  @JsonKey(name: 'tokens', includeIfNull: false)
  final Token? tokens;
  @JsonKey(name: 'lockTime', includeIfNull: false)
  final int? lockTime;

  TransactionDestination({
    this.address,
    this.attoAlphAmount,
    this.tokens,
    this.lockTime,
  });

  factory TransactionDestination.fromJson(Map<String, dynamic> json) =>
      _$TransactionDestinationFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionDestinationToJson(this);
}
