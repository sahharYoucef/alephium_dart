// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_header_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlockHeaderEntry _$BlockHeaderEntryFromJson(Map<String, dynamic> json) =>
    BlockHeaderEntry(
      hash: json['hash'] as String?,
      height: json['height'] as num?,
      timestamp: json['timestamp'] as num?,
      chainFrom: json['chainFrom'] as num?,
      chainTo: json['chainTo'] as num?,
      deps: (json['deps'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$BlockHeaderEntryToJson(BlockHeaderEntry instance) {
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
  writeNotNull('deps', instance.deps);
  return val;
}
