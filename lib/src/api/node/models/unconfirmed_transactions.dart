import 'package:json_annotation/json_annotation.dart';

import 'transaction_template.dart';

part 'unconfirmed_transactions.g.dart';

@JsonSerializable(includeIfNull: false)
class UnconfirmedTransactions {
  @JsonKey(name: 'fromGroup')
  final int? fromGroup;
  @JsonKey(name: 'toGroup')
  final int? toGroup;
  @JsonKey(name: 'unconfirmedTransactions')
  final List<TransactionTemplate>? unconfirmedTransactions;

  UnconfirmedTransactions({
    this.fromGroup,
    this.toGroup,
    this.unconfirmedTransactions,
  });

  factory UnconfirmedTransactions.fromJson(Map<String, dynamic> json) =>
      _$UnconfirmedTransactionsFromJson(json);
  Map<String, dynamic> toJson() => _$UnconfirmedTransactionsToJson(this);
}
