import 'package:json_annotation/json_annotation.dart';

import 'balance.dart';

part 'balances.g.dart';

@JsonSerializable(includeIfNull: false)
class Balances {
  @JsonKey(name: 'totalBalance')
  final String? totalBalance;
  @JsonKey(name: 'totalBalanceHint')
  final String? totalBalanceHint;
  @JsonKey(name: 'balances')
  final List<Balance>? balances;

  Balances({
    this.totalBalance,
    this.totalBalanceHint,
    this.balances,
  });

  factory Balances.fromJson(Map<String, dynamic> json) =>
      _$BalancesFromJson(json);

  Map<String, dynamic> toJson() => _$BalancesToJson(this);
}
