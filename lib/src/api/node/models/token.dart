import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:json_annotation/json_annotation.dart';

part 'token.g.dart';

@JsonSerializable(includeIfNull: false)
class Token {
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(
    name: 'amount',
    fromJson: fromJsonStringToInt,
    toJson: toJsonIntToString,
  )
  final int? amount;

  Token({
    this.id,
    this.amount,
  });

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
  Map<String, dynamic> toJson() => _$TokenToJson(this);
}
