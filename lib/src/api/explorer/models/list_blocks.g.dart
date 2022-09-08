// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_blocks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListBlocks _$ListBlocksFromJson(Map<String, dynamic> json) => ListBlocks(
      total: json['total'] as int?,
      blocks: (json['blocks'] as List<dynamic>?)
          ?.map((e) => BlockEntryLite.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListBlocksToJson(ListBlocks instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('total', instance.total);
  writeNotNull('blocks', instance.blocks);
  return val;
}
