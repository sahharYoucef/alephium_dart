import 'package:json_annotation/json_annotation.dart';

part 'wallet_deletion.g.dart';

@JsonSerializable(includeIfNull: false)
class WalletDeletion {
  @JsonKey(name: 'password')
  final String? password;

  WalletDeletion({
    this.password,
  });

  factory WalletDeletion.fromJson(Map<String, dynamic> json) =>
      _$WalletDeletionFromJson(json);
  Map<String, dynamic> toJson() => _$WalletDeletionToJson(this);
}
