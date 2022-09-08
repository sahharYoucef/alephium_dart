import 'package:json_annotation/json_annotation.dart';

part 'tx_not_found.g.dart';

@JsonSerializable(includeIfNull: false)
class TxNotFound {
  @JsonKey(name: 'type')
  final String? type;

  TxNotFound({
    this.type,
  });

  factory TxNotFound.fromJson(Map<String, dynamic> json) =>
      _$TxNotFoundFromJson(json);
  Map<String, dynamic> toJson() => _$TxNotFoundToJson(this);
}
