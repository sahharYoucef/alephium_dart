// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_creation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletCreation _$WalletCreationFromJson(Map<String, dynamic> json) =>
    WalletCreation(
      password: json['password'] as String?,
      walletName: json['walletName'] as String?,
      isMiner: json['isMiner'] as bool?,
      mnemonicPassphrase: json['mnemonicPassphrase'] as String?,
      mnemonicSize: json['mnemonicSize'] as num?,
    );

Map<String, dynamic> _$WalletCreationToJson(WalletCreation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('password', instance.password);
  writeNotNull('walletName', instance.walletName);
  writeNotNull('isMiner', instance.isMiner);
  writeNotNull('mnemonicPassphrase', instance.mnemonicPassphrase);
  writeNotNull('mnemonicSize', instance.mnemonicSize);
  return val;
}
