import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address_balance.g.dart';

@JsonSerializable(includeIfNull: false)
class ExplorerAddressBalance {
  @JsonKey(
      name: 'balance',
      fromJson: fromJsonStringToBigInt,
      toJson: toJsonBigIntToString)
  final BigInt? balance;
  @JsonKey(
      name: 'lockedBalance',
      fromJson: fromJsonStringToBigInt,
      toJson: toJsonBigIntToString)
  final BigInt? lockedBalance;

  ExplorerAddressBalance({
    this.balance,
    this.lockedBalance,
  });

  factory ExplorerAddressBalance.fromJson(Map<String, dynamic> json) =>
      _$ExplorerAddressBalanceFromJson(json);

  Map<String, dynamic> toJson() => _$ExplorerAddressBalanceToJson(this);
}
