// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_entry_lite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlockEntryLite _$BlockEntryLiteFromJson(Map<String, dynamic> json) =>
    BlockEntryLite(
      hash: json['hash'] as String?,
      height: json['height'] as num?,
      timestamp: json['timestamp'] as num?,
      chainFrom: json['chainFrom'] as num?,
      chainTo: json['chainTo'] as num?,
      txNumber: json['txNumber'] as num?,
      mainChain: json['mainChain'] as bool?,
      hashRate: json['hashRate'] as String?,
    );

Map<String, dynamic> _$BlockEntryLiteToJson(BlockEntryLite instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hash', instance.hash);
  writeNotNull('height', instance.height);
  writeNotNull('timestamp', instance.timestamp);
  writeNotNull('chainFrom', instance.chainFrom);
  writeNotNull('chainTo', instance.chainTo);
  writeNotNull('txNumber', instance.txNumber);
  writeNotNull('mainChain', instance.mainChain);
  writeNotNull('hashRate', instance.hashRate);
  return val;
}
