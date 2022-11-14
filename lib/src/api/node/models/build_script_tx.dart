import 'package:json_annotation/json_annotation.dart';

import 'token.dart';

part 'build_script_tx.g.dart';

@JsonSerializable(includeIfNull: false)
class BuildScriptTx {
  @JsonKey(name: 'fromPublicKey')
  final String? fromPublicKey;
  @JsonKey(name: 'bytecode')
  final String? bytecode;
  @JsonKey(name: 'tokens')
  final List<Token>? tokens;
  @JsonKey(name: 'gas')
  final num? gas;
  @JsonKey(name: 'attoAlphAmount')
  final String? attoAlphAmount;
  @JsonKey(name: 'alphAmount')
  final String? alphAmount;
  @JsonKey(name: 'gasPrice')
  final String? gasPrice;
  @JsonKey(name: 'utxosLimit')
  final num? utxosLimit;

  BuildScriptTx({
    this.fromPublicKey,
    this.bytecode,
    this.tokens,
    this.gas,
    this.attoAlphAmount,
    this.alphAmount,
    this.gasPrice,
    this.utxosLimit,
  });

  factory BuildScriptTx.fromJson(Map<String, dynamic> json) =>
      _$BuildScriptTxFromJson(json);

  Map<String, dynamic> toJson() => _$BuildScriptTxToJson(this);
}
