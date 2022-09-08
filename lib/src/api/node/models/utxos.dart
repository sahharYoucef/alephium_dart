import 'package:json_annotation/json_annotation.dart';

import 'utxo.dart';

part 'utxos.g.dart';

@JsonSerializable(includeIfNull: false)
class Utxos {
  @JsonKey(name: 'utxos')
  final List<Utxo>? utxos;
  @JsonKey(name: 'warning')
  final String? warning;

  Utxos({
    this.utxos,
    this.warning,
  });

  factory Utxos.fromJson(Map<String, dynamic> json) => _$UtxosFromJson(json);
  Map<String, dynamic> toJson() => _$UtxosToJson(this);
}
