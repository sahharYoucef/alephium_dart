import 'package:json_annotation/json_annotation.dart';

part 'contract.g.dart';

@JsonSerializable(includeIfNull: false)
class Contract {
  @JsonKey(name: 'code')
  final String? code;

  Contract({
    this.code,
  });

  factory Contract.fromJson(Map<String, dynamic> json) =>
      _$ContractFromJson(json);

  Map<String, dynamic> toJson() => _$ContractToJson(this);
}
