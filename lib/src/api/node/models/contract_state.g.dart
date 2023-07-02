// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContractState _$ContractStateFromJson(Map<String, dynamic> json) =>
    ContractState(
      address: json['address'] as String?,
      bytecode: json['bytecode'] as String?,
      initialStateHash: json['initialStateHash'] as String?,
      codeHash: json['codeHash'] as String?,
      fields: json['fields'] != null
          ? (json['fields'] as List<dynamic>)
              .map((e) => Val.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
      mutFields: json['mutFields'] != null
          ? (json['mutFields'] as List<dynamic>)
              .map((e) => Val.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
      immFields: json['immFields'] != null
          ? (json['immFields'] as List<dynamic>)
              .map((e) => Val.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
      asset: json['asset'] == null
          ? null
          : AssetState.fromJson(json['asset'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContractStateToJson(ContractState instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('bytecode', instance.bytecode);
  writeNotNull('codeHash', instance.codeHash);
  writeNotNull('initialStateHash', instance.initialStateHash);
  writeNotNull('fields', instance.fields);
  writeNotNull('asset', instance.asset);
  writeNotNull('mutFields', instance.mutFields);
  writeNotNull('immFields', instance.immFields);

  return val;
}
