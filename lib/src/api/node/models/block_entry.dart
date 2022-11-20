import 'package:json_annotation/json_annotation.dart';

import 'transaction.dart';

part 'block_entry.g.dart';

@JsonSerializable(includeIfNull: false)
class BlockEntry {
  @JsonKey(name: 'hash')
  final String? hash;
  @JsonKey(name: 'height')
  final int? height;
  @JsonKey(name: 'timestamp')
  final int? timestamp;
  @JsonKey(name: 'nonce')
  final num? nonce;
  @JsonKey(name: 'version')
  final num? version;
  @JsonKey(name: 'chainFrom')
  final int? chainFrom;
  @JsonKey(name: 'chainTo')
  final int? chainTo;
  @JsonKey(name: 'deps')
  final List<String>? deps;
  @JsonKey(name: 'transactions')
  final List<Transaction>? transactions;
  @JsonKey(name: 'depStateHash')
  final String? depStateHash;
  @JsonKey(name: 'txsHash')
  final String? txsHash;
  @JsonKey(name: 'target')
  final String? target;

  BlockEntry({
    this.hash,
    this.height,
    this.timestamp,
    this.nonce,
    this.version,
    this.chainFrom,
    this.chainTo,
    this.deps,
    this.transactions,
    this.depStateHash,
    this.txsHash,
    this.target,
  });

  factory BlockEntry.fromJson(Map<String, dynamic> json) =>
      _$BlockEntryFromJson(json);

  Map<String, dynamic> toJson() => _$BlockEntryToJson(this);
}
