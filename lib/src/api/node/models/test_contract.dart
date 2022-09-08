import 'package:json_annotation/json_annotation.dart';

import 'contract_state.dart';
import 'input_asset.dart';

part 'test_contract.g.dart';

@JsonSerializable(includeIfNull: false)
class TestContract {
  @JsonKey(name: 'group')
  final num? group;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'bytecode')
  final String? bytecode;
  @JsonKey(name: 'initialFields')
  final List<dynamic>? initialFields;
  @JsonKey(name: 'testMethodIndex')
  final num? testMethodIndex;
  @JsonKey(name: 'testArgs')
  final List<dynamic>? testArgs;
  @JsonKey(name: 'existingContracts')
  final List<ContractState>? existingContracts;
  @JsonKey(name: 'inputAssets')
  final List<InputAsset>? inputAssets;

  TestContract({
    this.group,
    this.address,
    this.bytecode,
    this.initialFields,
    this.testMethodIndex,
    this.testArgs,
    this.existingContracts,
    this.inputAssets,
  });

  factory TestContract.fromJson(Map<String, dynamic> json) =>
      _$TestContractFromJson(json);
  Map<String, dynamic> toJson() => _$TestContractToJson(this);
}
