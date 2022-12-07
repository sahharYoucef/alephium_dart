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
      fields: json['fields'] as List<dynamic>?,
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
  return val;
}
