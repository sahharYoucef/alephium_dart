import 'package:json_annotation/json_annotation.dart';

part 'address_info.g.dart';

@JsonSerializable(includeIfNull: false)
class ExplorerAddressInfo {
  @JsonKey(name: 'balance')
  final String? balance;
  @JsonKey(name: 'lockedBalance')
  final String? lockedBalance;
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
