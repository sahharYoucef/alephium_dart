import 'package:json_annotation/json_annotation.dart';

part 'block_entry_lite.g.dart';

@JsonSerializable(includeIfNull: false)
class BlockEntryLite {
  @JsonKey(name: 'hash')
  final String? hash;
  @JsonKey(name: 'height')
  final num? height;
  @JsonKey(name: 'timestamp')
  final num? timestamp;
  @JsonKey(name: 'chainFrom')
  final num? chainFrom;
  @JsonKey(name: 'chainTo')
  final num? chainTo;
  @JsonKey(name: 'txNumber')
  final String? txNumber;
  @JsonKey(name: 'mainChain')
  final String? mainChain;
  @JsonKey(name: 'hashRate')
  final String? hashRate;

  BlockEntryLite({
    this.hash,
    this.height,
    this.timestamp,
    this.chainFrom,
    this.chainTo,
    this.txNumber,
    this.mainChain,
    this.hashRate,
  });

  factory BlockEntryLite.fromJson(Map<String, dynamic> json) =>
      _$BlockEntryLiteFromJson(json);
  Map<String, dynamic> toJson() => _$BlockEntryLiteToJson(this);
}
