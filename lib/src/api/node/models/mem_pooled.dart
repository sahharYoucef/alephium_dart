import 'package:json_annotation/json_annotation.dart';

part 'mem_pooled.g.dart';

@JsonSerializable(includeIfNull: false)
class MemPooled {
  @JsonKey(name: 'type')
  final String? type;

  MemPooled({
    this.type,
  });

  factory MemPooled.fromJson(Map<String, dynamic> json) =>
      _$MemPooledFromJson(json);
  Map<String, dynamic> toJson() => _$MemPooledToJson(this);
}
