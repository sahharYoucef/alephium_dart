import 'package:json_annotation/json_annotation.dart';

part 'debug_message.g.dart';

@JsonSerializable(includeIfNull: false)
class DebugMessage {
  @JsonKey(name: 'contractAddress')
  final String? contractAddress;
  @JsonKey(name: 'message')
  final String? message;

  DebugMessage({
    this.contractAddress,
    this.message,
  });

  factory DebugMessage.fromJson(Map<String, dynamic> json) =>
      _$DebugMessageFromJson(json);
  Map<String, dynamic> toJson() => _$DebugMessageToJson(this);
}
