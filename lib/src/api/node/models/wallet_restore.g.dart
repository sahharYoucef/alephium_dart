// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_restore.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletRestore _$WalletRestoreFromJson(Map<String, dynamic> json) =>
    WalletRestore(
      password: json['password'] as String?,
      walletName: json['walletName'] as String?,
      isMiner: json['isMiner'] as bool?,
      mnemonicPassphrase: json['mnemonicPassphrase'] as String?,
      mnemonic: json['mnemonic'] as num?,
    );

Map<String, dynamic> _$WalletRestoreToJson(WalletRestore instance) {
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
  writeNotNull('mnemonic', instance.mnemonic);
  return val;
}
