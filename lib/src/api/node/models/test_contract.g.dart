// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestContract _$TestContractFromJson(Map<String, dynamic> json) => TestContract(
      group: json['group'] as num?,
      address: json['address'] as String?,
      bytecode: json['bytecode'] as String?,
      initialFields: json['initialFields'] as List<dynamic>?,
      testMethodIndex: json['testMethodIndex'] as num?,
      testArgs: json['testArgs'] as List<dynamic>?,
      existingContracts: (json['existingContracts'] as List<dynamic>?)
          ?.map((e) => ContractState.fromJson(e as Map<String, dynamic>))
          .toList(),
      inputAssets: (json['inputAssets'] as List<dynamic>?)
          ?.map((e) => InputAsset.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TestContractToJson(TestContract instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('group', instance.group);
  writeNotNull('address', instance.address);
  writeNotNull('bytecode', instance.bytecode);
  writeNotNull('initialFields', instance.initialFields);
  writeNotNull('testMethodIndex', instance.testMethodIndex);
  writeNotNull('testArgs', instance.testArgs);
  writeNotNull('existingContracts', instance.existingContracts);
  writeNotNull('inputAssets', instance.inputAssets);
  return val;
}
