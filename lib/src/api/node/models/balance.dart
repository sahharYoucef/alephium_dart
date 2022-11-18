import 'package:alephium_dart/src/api/node/models/token.dart';
import 'package:json_annotation/json_annotation.dart';

part 'balance.g.dart';

@JsonSerializable(includeIfNull: false)
class Balance {
  @JsonKey(name: 'lockedBalance')
  final String? lockedBalance;
  @JsonKey(name: 'lockedBalanceHint')
  final String? lockedBalanceHint;
  @JsonKey(name: 'balance')
  final String? balance;
  @JsonKey(name: 'balanceHint')
  final String? balanceHint;
  @JsonKey(name: 'tokenBalances')
  final List<Token>? tokenBalances;
  @JsonKey(name: 'lockedTokenBalances')
  final List<Token>? lockedTokenBalances;
  @JsonKey(name: 'utxoNum')
  final num? utxoNum;
  @JsonKey(name: 'warning')
  final String? warning;

  Balance(
      {this.lockedBalance,
      this.balance,
      this.balanceHint,
      this.warning,
      this.lockedBalanceHint,
      this.utxoNum,
      this.tokenBalances,
      this.lockedTokenBalances});

  factory Balance.fromJson(Map<String, dynamic> json) =>
      _$BalanceFromJson(json);

  Map<String, dynamic> toJson() => _$BalanceToJson(this);
}
