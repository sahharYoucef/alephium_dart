import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:alephium_dart/src/api/node/models/token.dart';
import 'package:json_annotation/json_annotation.dart';

part 'balance.g.dart';

@JsonSerializable(includeIfNull: false)
class Balance {
  @JsonKey(
      name: 'lockedBalance',
      fromJson: fromJsonStringToBigInt,
      toJson: toJsonBigIntToString)
  final BigInt? lockedBalance;
  @JsonKey(name: 'lockedBalanceHint')
  final String? lockedBalanceHint;
  @JsonKey(
      name: 'balance',
      fromJson: fromJsonStringToBigInt,
      toJson: toJsonBigIntToString)
  final BigInt? balance;
  @JsonKey(name: 'balanceHint')
  final String? balanceHint;
  @JsonKey(name: 'tokenBalances')
  final List<Token>? tokenBalances;
  @JsonKey(name: 'lockedTokenBalances')
  final List<Token>? lockedTokenBalances;
  @JsonKey(name: 'utxoNum')
  final int? utxoNum;
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
