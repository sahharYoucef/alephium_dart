// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CallContract _$CallContractFromJson(Map<String, dynamic> json) => CallContract(
      group: json['group'] as int?,
      address: json['address'] as String?,
      existingContracts: (json['existingContracts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      inputAssets: (json['inputAssets'] as List<dynamic>?)
          ?.map((e) => InputAsset.fromJson(e as Map<String, dynamic>))
          .toList(),
      bytecode: json['bytecode'] as String?,
      methodIndex: json['methodIndex'] as num?,
      txId: json['txId'] as String?,
      initialAsset: (json['initialAsset'] as List<dynamic>?)
          ?.map((e) => AssetState.fromJson(e as Map<String, dynamic>))
          .toList(),
      initialFields: json['initialFields'] as List<dynamic>?,
    );

Map<String, dynamic> _$CallContractToJson(CallContract instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('group', instance.group);
  writeNotNull('bytecode', instance.bytecode);
  writeNotNull('txId', instance.txId);
  writeNotNull('address', instance.address);
  writeNotNull('methodIndex', instance.methodIndex);
  writeNotNull('initialFields', instance.initialFields);
  writeNotNull('existingContracts', instance.existingContracts);
  writeNotNull('inputAssets', instance.inputAssets);
  writeNotNull('initialAsset', instance.initialAsset);
  return val;
}
