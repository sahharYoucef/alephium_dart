import 'package:json_annotation/json_annotation.dart';

part 'address_balance.g.dart';

@JsonSerializable(includeIfNull: false)
class ExplorerAddressBalance {
  @JsonKey(name: 'balance')
  final String? balance;
  @JsonKey(name: 'lockedBalance')
  final String? lockedBalance;

  ExplorerAddressBalance({
    this.balance,
    this.lockedBalance,
  });

  factory ExplorerAddressBalance.fromJson(Map<String, dynamic> json) =>
      _$ExplorerAddressBalanceFromJson(json);

  Map<String, dynamic> toJson() => _$ExplorerAddressBalanceToJson(this);
}
