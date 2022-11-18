import 'package:json_annotation/json_annotation.dart';

import 'token.dart';

part 'build_script_tx.g.dart';

@JsonSerializable(includeIfNull: false)
class BuildScriptTx {
  @JsonKey(name: 'fromPublicKey')
  final String? fromPublicKey;
  @JsonKey(name: 'bytecode')
  final String? byteCode;
  @JsonKey(name: 'tokens')
  final List<Token>? tokens;
  @JsonKey(name: 'gasAmount')
  final num? gasAmount;
  @JsonKey(name: 'attoAlphAmount')
  final String? attoAlphAmount;
  @JsonKey(name: 'gasPrice')
  final String? gasPrice;
  @JsonKey(name: 'targetBlockHash')
  final num? targetBlockHash;

  BuildScriptTx({
    this.fromPublicKey,
    this.byteCode,
    this.tokens,
    this.gasAmount,
    this.attoAlphAmount,
    this.gasPrice,
    this.targetBlockHash,
  });

  factory BuildScriptTx.fromJson(Map<String, dynamic> json) =>
      _$BuildScriptTxFromJson(json);

  Map<String, dynamic> toJson() => _$BuildScriptTxToJson(this);
}
