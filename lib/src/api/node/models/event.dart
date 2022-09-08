import 'package:json_annotation/json_annotation.dart';

part 'event.g.dart';

@JsonSerializable(includeIfNull: false)
class Event {
  @JsonKey(name: 'blockHash')
  final String? blockHash;
  @JsonKey(name: 'contractAddress')
  final String? contractAddress;
  @JsonKey(name: 'txId')
  final String? txId;
  @JsonKey(name: 'eventIndex')
  final num? eventIndex;
  @JsonKey(name: 'fields')
  final List<dynamic>? fields;
  @JsonKey(name: 'type')
  final String? type;

  Event({
    this.blockHash,
    this.contractAddress,
    this.txId,
    this.eventIndex,
    this.fields,
    this.type,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  Map<String, dynamic> toJson() => _$EventToJson(this);
}
