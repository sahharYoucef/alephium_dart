import 'package:alephium_dart/alephium_dart.dart';
import 'package:json_annotation/json_annotation.dart';

part 'decode_unsigned_tx_result.g.dart';

@JsonSerializable(includeIfNull: false)
class DecodeUnsignedTxResult {
  @JsonKey(name: 'unsignedTx')
  final UnsignedTx? unsignedTx;
  @JsonKey(name: 'fromGroup')
  final int? fromGroup;
  @JsonKey(name: 'toGroup')
  final int? toGroup;

  DecodeUnsignedTxResult({
    this.unsignedTx,
    this.fromGroup,
    this.toGroup,
  });

  factory DecodeUnsignedTxResult.fromJson(Map<String, dynamic> json) =>
      _$DecodeUnsignedTxResultFromJson(json);
  Map<String, dynamic> toJson() => _$DecodeUnsignedTxResultToJson(this);
}
