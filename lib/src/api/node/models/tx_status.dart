import 'package:json_annotation/json_annotation.dart';

part 'tx_status.g.dart';

@JsonSerializable(includeIfNull: false)
class TxStatus {
  @JsonKey(name: 'txIndex')
  final int? txIndex;
  @JsonKey(name: 'blockHash')
  final String? blockHash;
  @JsonKey(name: 'chainConfirmations')
  final int? chainConfirmations;
  @JsonKey(name: 'toGroupConfirmations')
  final int? toGroupConfirmations;
  @JsonKey(name: 'fromGroupConfirmations')
  final int? fromGroupConfirmations;
  @JsonKey(name: 'type')
  final String? type;

  TxStatus({
    this.txIndex,
    this.blockHash,
    this.chainConfirmations,
    this.toGroupConfirmations,
    this.fromGroupConfirmations,
    this.type,
  });

  factory TxStatus.fromJson(Map<String, dynamic> json) =>
      _$TxStatusFromJson(json);

  Map<String, dynamic> toJson() => _$TxStatusToJson(this);
}
