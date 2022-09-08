// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_contract_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestContractResult _$TestContractResultFromJson(Map<String, dynamic> json) =>
    TestContractResult(
      returns: json['returns'] as List<dynamic>?,
      gasUsed: json['gasUsed'] as num?,
      contracts: (json['contracts'] as List<dynamic>?)
          ?.map((e) => ContractState.fromJson(e as Map<String, dynamic>))
          .toList(),
      txOutputs: (json['txOutputs'] as List<dynamic>?)
          ?.map((e) => Output.fromJson(e as Map<String, dynamic>))
          .toList(),
      events: (json['events'] as List<dynamic>?)
          ?.map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TestContractResultToJson(TestContractResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('returns', instance.returns);
  writeNotNull('gasUsed', instance.gasUsed);
  writeNotNull('contracts', instance.contracts);
  writeNotNull('txOutputs', instance.txOutputs);
  writeNotNull('events', instance.events);
  return val;
}
