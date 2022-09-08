import 'package:json_annotation/json_annotation.dart';

part 'address_balance.g.dart';

@JsonSerializable(includeIfNull: false)
class AddressBalance {
  @JsonKey(name: 'address')
  final bool? address;
  @JsonKey(name: 'balance')
  final String? balance;
  @JsonKey(name: 'balanceHint')
  final String? balanceHint;
  @JsonKey(name: 'lockedBalance')
  final String? lockedBalance;
  @JsonKey(name: 'warning')
  final String? warning;

  AddressBalance(
      {this.address,
      this.balance,
      this.balanceHint,
      this.lockedBalance,
      this.warning});

  factory AddressBalance.fromJson(Map<String, dynamic> json) =>
      _$AddressBalanceFromJson(json);
  Map<String, dynamic> toJson() => _$AddressBalanceToJson(this);
}
