// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlockEntry _$BlockEntryFromJson(Map<String, dynamic> json) => BlockEntry(
      hash: json['hash'] as String?,
      height: json['height'] as num?,
      timestamp: json['timestamp'] as num?,
      nonce: json['nonce'] as num?,
      version: json['version'] as num?,
      chainFrom: json['chainFrom'] as num?,
      chainTo: json['chainTo'] as num?,
      deps: (json['deps'] as List<dynamic>?)?.map((e) => e as String).toList(),
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      depStateHash: json['depStateHash'] as String?,
      txsHash: json['txsHash'] as String?,
      target: json['target'] as String?,
    );

Map<String, dynamic> _$BlockEntryToJson(BlockEntry instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hash', instance.hash);
  writeNotNull('height', instance.height);
  writeNotNull('timestamp', instance.timestamp);
  writeNotNull('nonce', instance.nonce);
  writeNotNull('version', instance.version);
  writeNotNull('chainFrom', instance.chainFrom);
  writeNotNull('chainTo', instance.chainTo);
  writeNotNull('deps', instance.deps);
  writeNotNull('transactions', instance.transactions);
  writeNotNull('depStateHash', instance.depStateHash);
  writeNotNull('txsHash', instance.txsHash);
  writeNotNull('target', instance.target);
  return val;
}
