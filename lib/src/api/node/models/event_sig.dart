import 'package:json_annotation/json_annotation.dart';

part 'event_sig.g.dart';

@JsonSerializable(includeIfNull: false)
class EventSig {
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'signature')
  final String? signature;
  @JsonKey(name: 'fieldNames')
  final List<String>? fieldNames;
  @JsonKey(name: 'fieldTypes')
  final List<String>? fieldTypes;

  EventSig({
    this.name,
    this.signature,
    this.fieldNames,
    this.fieldTypes,
  });

  factory EventSig.fromJson(Map<String, dynamic> json) =>
      _$EventSigFromJson(json);
  Map<String, dynamic> toJson() => _$EventSigToJson(this);
}
