// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_contract_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestContractResult _$TestContractResultFromJson(Map<String, dynamic> json) =>
    TestContractResult(
      gasUsed: json['gasUsed'] as num?,
      address: json['address'] as String?,
      codeHash: json['codeHash'] as String?,
      debugMessages: json['debugMessages'] == null
          ? null
          : DebugMessage.fromJson(
              json['debugMessages'] as Map<String, dynamic>),
      contracts: (json['contracts'] as List<dynamic>?)
          ?.map((e) => ContractState.fromJson(e as Map<String, dynamic>))
          .toList(),
      txOutputs: (json['txOutputs'] as List<dynamic>?)
          ?.map((e) => AssetOutput.fromJson(e as Map<String, dynamic>))
          .toList(),
      txInputs: (json['txInputs'] as List<dynamic>?)
          ?.map((e) => e as String)
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

  writeNotNull('address', instance.address);
  writeNotNull('codeHash', instance.codeHash);
  writeNotNull('gasUsed', instance.gasUsed);
  writeNotNull('debugMessages', instance.debugMessages);
  writeNotNull('contracts', instance.contracts);
  writeNotNull('txInputs', instance.txInputs);
  writeNotNull('txOutputs', instance.txOutputs);
  writeNotNull('events', instance.events);
  return val;
}
