import 'package:alephium_dart/src/api/node/models/compiler_options.dart';
import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

@JsonSerializable(includeIfNull: false)
class Project {
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'compilerOptions')
  final CompilerOptions? compilerOptions;

  Project({
    this.code,
    this.compilerOptions,
  });

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}
