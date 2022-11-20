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
      gasPrice: fromJsonStringToNum(json['gasPrice'] as String?),
      gasAmount: json['gasAmount'] as num?,
      type: json['type'] as String?,
      lastSeen: json['lastSeen'] as num?,
      chainFrom: json['chainFrom'] as num?,
      chainTo: json['chainTo'] as num?,
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
  writeNotNull('gasPrice', toJsonNumToString(instance.gasPrice));
  writeNotNull('type', instance.type);
  writeNotNull('lastSeen', instance.lastSeen);
  writeNotNull('chainFrom', instance.chainFrom);
  writeNotNull('chainTo', instance.chainTo);
  return val;
}
