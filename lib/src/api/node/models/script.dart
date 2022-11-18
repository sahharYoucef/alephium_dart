import 'package:alephium_dart/src/api/node/models/compiler_options.dart';
import 'package:json_annotation/json_annotation.dart';

part 'script.g.dart';

@JsonSerializable(includeIfNull: false)
class Script {
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'compilerOptions')
  final CompilerOptions? compilerOptions;

  Script({
    this.code,
    this.compilerOptions,
  });

  factory Script.fromJson(Map<String, dynamic> json) => _$ScriptFromJson(json);

  Map<String, dynamic> toJson() => _$ScriptToJson(this);
}
