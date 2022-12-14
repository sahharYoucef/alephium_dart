import 'package:json_annotation/json_annotation.dart';

part 'block_header_entry.g.dart';

@JsonSerializable(includeIfNull: false)
class BlockHeaderEntry {
  @JsonKey(name: 'hash')
  final String? hash;
  @JsonKey(name: 'height')
  final int? height;
  @JsonKey(name: 'timestamp')
  final int? timestamp;
  @JsonKey(name: 'chainFrom')
  final int? chainFrom;
  @JsonKey(name: 'chainTo')
  final int? chainTo;
  @JsonKey(name: 'deps')
  final List<String>? deps;

  BlockHeaderEntry({
    this.hash,
    this.height,
    this.timestamp,
    this.chainFrom,
    this.chainTo,
    this.deps,
  });

  factory BlockHeaderEntry.fromJson(Map<String, dynamic> json) =>
      _$BlockHeaderEntryFromJson(json);

  Map<String, dynamic> toJson() => _$BlockHeaderEntryToJson(this);
}
