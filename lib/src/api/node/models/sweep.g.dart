// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sweep.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sweep _$SweepFromJson(Map<String, dynamic> json) => Sweep(
      toAddress: json['toAddress'] as String?,
      lockTime: json['lockTime'] as int?,
      gas: json['gas'] as int?,
      gasPrice: json['gasPrice'] as String?,
      utxosLimit: json['utxosLimit'] as int?,
    );

Map<String, dynamic> _$SweepToJson(Sweep instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('toAddress', instance.toAddress);
  writeNotNull('lockTime', instance.lockTime);
  writeNotNull('gas', instance.gas);
  writeNotNull('gasPrice', instance.gasPrice);
  writeNotNull('utxosLimit', instance.utxosLimit);
  return val;
}