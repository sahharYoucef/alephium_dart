import 'package:json_annotation/json_annotation.dart';

import 'block_entry_lite.dart';

part 'list_blocks.g.dart';

@JsonSerializable(includeIfNull: false)
class ListBlocks {
  @JsonKey(name: 'total')
  final int? total;
  @JsonKey(name: 'blocks')
  final List<BlockEntryLite>? blocks;

  ListBlocks({
    this.total,
    this.blocks,
  });

  factory ListBlocks.fromJson(Map<String, dynamic> json) =>
      _$ListBlocksFromJson(json);
  Map<String, dynamic> toJson() => _$ListBlocksToJson(this);
}
