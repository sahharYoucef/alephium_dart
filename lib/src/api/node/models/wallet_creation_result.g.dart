// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_creation_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletCreationResult _$WalletCreationResultFromJson(
        Map<String, dynamic> json) =>
    WalletCreationResult(
      walletName: json['walletName'] as String?,
      mnemonic: json['mnemonic'] as String?,
    );

Map<String, dynamic> _$WalletCreationResultToJson(
    WalletCreationResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('walletName', instance.walletName);
  writeNotNull('mnemonic', instance.mnemonic);
  return val;
}
