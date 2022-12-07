import 'package:alephium_dart/src/api/helpers/api_helpers.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address_info.g.dart';

@JsonSerializable(includeIfNull: false)
class ExplorerAddressInfo {
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
  @JsonKey(name: 'txNumber')
  final int? txNumber;

  ExplorerAddressInfo({
    this.balance,
    this.lockedBalance,
    this.txNumber,
  });

  factory ExplorerAddressInfo.fromJson(Map<String, dynamic> json) =>
      _$ExplorerAddressInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ExplorerAddressInfoToJson(this);
}
