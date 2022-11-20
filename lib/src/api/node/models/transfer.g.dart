// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transfer _$TransferFromJson(Map<String, dynamic> json) => Transfer(
      destinations: (json['destinations'] as List<dynamic>?)
          ?.map(
              (e) => TransactionDestination.fromJson(e as Map<String, dynamic>))
          .toList(),
      gasAmount: json['gasAmount'] as num?,
      gasPrice: fromJsonStringToNum(json['gasPrice'] as String?),
      utxosLimit: json['utxosLimit'] as num?,
    );

Map<String, dynamic> _$TransferToJson(Transfer instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('destinations', instance.destinations);
  writeNotNull('gasAmount', instance.gasAmount);
  writeNotNull('gasPrice', toJsonNumToString(instance.gasPrice));
  writeNotNull('utxosLimit', instance.utxosLimit);
  return val;
}
