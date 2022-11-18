import 'package:alephium_dart/src/api/node/models/compiler_options.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contract.g.dart';

@JsonSerializable(includeIfNull: false)
class Contract {
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'compilerOptions')
  final CompilerOptions? compilerOptions;

  Contract({
    this.code,
    this.compilerOptions,
  });

  factory Contract.fromJson(Map<String, dynamic> json) =>
      _$ContractFromJson(json);

  Map<String, dynamic> toJson() => _$ContractToJson(this);
}
