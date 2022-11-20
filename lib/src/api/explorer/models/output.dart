import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:alephium_dart/src/api/node/models/token.dart';
import 'package:json_annotation/json_annotation.dart';

part 'output.g.dart';

@JsonSerializable(includeIfNull: false)
class ExplorerOutput {
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(
      name: 'attoAlphAmount',
      fromJson: fromJsonStringToBigInt,
      toJson: toJsonBigIntToString)
  final BigInt? attoAlphAmount;
  @JsonKey(name: 'hint')
  final int? hint;
  @JsonKey(name: 'key')
  final String? key;
  @JsonKey(name: 'lockTime')
  final int? lockTime;
  @JsonKey(name: 'spent')
  final String? spent;
  @JsonKey(name: 'tokens')
  final List<Token>? tokens;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'message')
  final String? message;

  ExplorerOutput({
    this.address,
    this.attoAlphAmount,
    this.hint,
    this.key,
    this.lockTime,
    this.spent,
    this.tokens,
    this.type,
    this.message,
  });

  factory ExplorerOutput.fromJson(Map<String, dynamic> json) =>
      _$ExplorerOutputFromJson(json);
  Map<String, dynamic> toJson() => _$ExplorerOutputToJson(this);
}
