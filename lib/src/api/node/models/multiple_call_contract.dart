import 'package:alephium_dart/src/api/node/models/call_contract.dart';
import 'package:json_annotation/json_annotation.dart';

part 'multiple_call_contract.g.dart';

@JsonSerializable(includeIfNull: false)
class MultipleCallContract {
  @JsonKey(name: 'calls', defaultValue: [])
  final List<CallContract> calls;

  MultipleCallContract({
    this.calls = const [],
  });

  factory MultipleCallContract.fromJson(Map<String, dynamic> json) =>
      _$MultipleCallContractFromJson(json);
  Map<String, dynamic> toJson() => _$MultipleCallContractToJson(this);
}
