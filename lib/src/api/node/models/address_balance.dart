import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address_balance.g.dart';

@JsonSerializable(includeIfNull: false)
class AddressBalance {
  @JsonKey(name: 'address')
  final bool? address;
  @JsonKey(
      name: 'balance',
      fromJson: fromJsonStringToBigInt,
      toJson: toJsonBigIntToString)
  final BigInt? balance;
  @JsonKey(name: 'balanceHint')
  final String? balanceHint;
  @JsonKey(
      name: 'lockedBalance',
      fromJson: fromJsonStringToBigInt,
      toJson: toJsonBigIntToString)
  final BigInt? lockedBalance;
  @JsonKey(name: 'lockedBalanceHint')
  final String? lockedBalanceHint;
  @JsonKey(name: 'warning')
  final String? warning;

  AddressBalance({
    this.address,
    this.balance,
    this.balanceHint,
    this.lockedBalanceHint,
    this.lockedBalance,
    this.warning,
  });

  factory AddressBalance.fromJson(Map<String, dynamic> json) =>
      _$AddressBalanceFromJson(json);
  Map<String, dynamic> toJson() => _$AddressBalanceToJson(this);
}
