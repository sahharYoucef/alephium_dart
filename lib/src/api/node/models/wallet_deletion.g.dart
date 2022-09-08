// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_deletion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletDeletion _$WalletDeletionFromJson(Map<String, dynamic> json) =>
    WalletDeletion(
      password: json['password'] as String?,
    );

Map<String, dynamic> _$WalletDeletionToJson(WalletDeletion instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('password', instance.password);
  return val;
}
