// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_unlock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletUnlock _$WalletUnlockFromJson(Map<String, dynamic> json) => WalletUnlock(
      password: json['password'] as String?,
      mnemonicPassphrase: json['mnemonicPassphrase'] as bool?,
    );

Map<String, dynamic> _$WalletUnlockToJson(WalletUnlock instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('password', instance.password);
  writeNotNull('mnemonicPassphrase', instance.mnemonicPassphrase);
  return val;
}
