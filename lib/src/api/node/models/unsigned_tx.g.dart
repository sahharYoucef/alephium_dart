// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsigned_tx.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnsignedTx _$UnsignedTxFromJson(Map<String, dynamic> json) => UnsignedTx(
      txId: json['txId'] as String?,
      version: json['version'] as num?,
      networkId: json['networkId'] as num?,
      scriptOpt: json['scriptOpt'] as String?,
      gasPrice: fromJsonStringToBigInt(json['gasPrice'] as String?),
      gasAmount: json['gasAmount'] as int?,
      inputs: (json['inputs'] as List<dynamic>?)
          ?.map((e) => AssetInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      fixedOutputs: (json['fixedOutputs'] as List<dynamic>?)
          ?.map((e) => FixedAssetOutput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UnsignedTxToJson(UnsignedTx instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('txId', instance.txId);
  writeNotNull('version', instance.version);
  writeNotNull('networkId', instance.networkId);
  writeNotNull('scriptOpt', instance.scriptOpt);
  writeNotNull('gasPrice', toJsonBigIntToString(instance.gasPrice));
  writeNotNull('gasAmount', instance.gasAmount);
  writeNotNull('inputs', instance.inputs);
  writeNotNull('fixedOutputs', instance.fixedOutputs);
  return val;
}
