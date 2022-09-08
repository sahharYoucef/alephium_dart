import 'package:json_annotation/json_annotation.dart';

part 'balance.g.dart';

@JsonSerializable(includeIfNull: false)
class Balance {
  @JsonKey(name: 'lockedBalance')
  final String? lockedBalance;
  @JsonKey(name: 'balance')
  final String? balance;
  @JsonKey(name: 'balanceHint')
  final String? balanceHint;
  @JsonKey(name: 'warning')
  final String? warning;
  @JsonKey(name: 'lockedBalanceHint')
  final String? lockedBalanceHint;
  @JsonKey(name: 'utxoNum')
  final int? utxoNum;

  Balance({
    this.lockedBalance,
    this.balance,
    this.balanceHint,
    this.warning,
    this.lockedBalanceHint,
    this.utxoNum,
  });

  factory Balance.fromJson(Map<String, dynamic> json) =>
      _$BalanceFromJson(json);

  Map<String, dynamic> toJson() => _$BalanceToJson(this);
}
