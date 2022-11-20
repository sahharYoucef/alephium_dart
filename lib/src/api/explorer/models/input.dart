import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:alephium_dart/src/api/node/models/token.dart';
import 'package:json_annotation/json_annotation.dart';

import 'output_ref.dart';

part 'input.g.dart';

@JsonSerializable(includeIfNull: false)
class ExplorerInput {
  @JsonKey(name: 'outputRef')
  final ExplorerOutputRef? outputRef;
  @JsonKey(name: 'unlockScript')
  final String? unlockScript;
  @JsonKey(name: 'txHashRef')
  final String? txHashRef;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(
      name: 'attoAlphAmount',
      fromJson: fromJsonStringToNum,
      toJson: toJsonNumToString)
  final num? attoAlphAmount;
  @JsonKey(name: 'tokens')
  final List<Token>? tokens;

  ExplorerInput({
    this.outputRef,
    this.unlockScript,
    this.txHashRef,
    this.address,
    this.attoAlphAmount,
    this.tokens,
  });

  factory ExplorerInput.fromJson(Map<String, dynamic> json) =>
      _$ExplorerInputFromJson(json);
  Map<String, dynamic> toJson() => _$ExplorerInputToJson(this);
}
