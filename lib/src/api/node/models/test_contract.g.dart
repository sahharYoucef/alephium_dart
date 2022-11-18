// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestContract _$TestContractFromJson(Map<String, dynamic> json) => TestContract(
      group: json['group'] as num?,
      address: json['address'] as String?,
      existingContracts: (json['existingContracts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      inputAssets: (json['inputAssets'] as List<dynamic>?)
          ?.map((e) => TestInputAsset.fromJson(e as Map<String, dynamic>))
          .toList(),
      args: json['args'] as List<dynamic>?,
      methodIndex: json['methodIndex'] as num?,
      txId: json['txId'] as String?,
      worldStateBlockHash: json['worldStateBlockHash'] as String?,
    );

Map<String, dynamic> _$TestContractToJson(TestContract instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('group', instance.group);
  writeNotNull('worldStateBlockHash', instance.worldStateBlockHash);
  writeNotNull('txId', instance.txId);
  writeNotNull('address', instance.address);
  writeNotNull('methodIndex', instance.methodIndex);
  writeNotNull('args', instance.args);
  writeNotNull('existingContracts', instance.existingContracts);
  writeNotNull('inputAssets', instance.inputAssets);
  return val;
}
