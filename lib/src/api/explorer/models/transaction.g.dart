// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExplorerTransaction _$ExplorerTransactionFromJson(Map<String, dynamic> json) =>
    ExplorerTransaction(
      hash: json['hash'] as String?,
      blockHash: json['blockHash'] as String?,
      timeStamp: json['timestamp'] as num?,
      inputs: (json['inputs'] as List<dynamic>?)
          ?.map((e) => ExplorerInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      outputs: (json['outputs'] as List<dynamic>?)
          ?.map((e) => ExplorerOutput.fromJson(e as Map<String, dynamic>))
          .toList(),
      gasPrice: fromJsonStringToBigInt(json['gasPrice'] as String?),
      gasAmount: json['gasAmount'] as int?,
      type: json['type'] as String?,
      lastSeen: json['lastSeen'] as int?,
      chainFrom: json['chainFrom'] as int?,
      chainTo: json['chainTo'] as int?,
    );

Map<String, dynamic> _$ExplorerTransactionToJson(ExplorerTransaction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hash', instance.hash);
  writeNotNull('blockHash', instance.blockHash);
  writeNotNull('timestamp', instance.timeStamp);
  writeNotNull('inputs', instance.inputs);
  writeNotNull('outputs', instance.outputs);
  writeNotNull('gasAmount', instance.gasAmount);
  writeNotNull('gasPrice', toJsonBigIntToString(instance.gasPrice));
  writeNotNull('type', instance.type);
  writeNotNull('lastSeen', instance.lastSeen);
  writeNotNull('chainFrom', instance.chainFrom);
  writeNotNull('chainTo', instance.chainTo);
  return val;
}
