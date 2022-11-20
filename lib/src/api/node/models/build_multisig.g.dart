// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_multisig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildMultisig _$BuildMultisigFromJson(Map<String, dynamic> json) =>
    BuildMultisig(
      fromPublicKeys: (json['fromPublicKeys'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      destinations: (json['destinations'] as List<dynamic>?)
          ?.map(
              (e) => TransactionDestination.fromJson(e as Map<String, dynamic>))
          .toList(),
      gasAmount: json['gasAmount'] as int?,
      gasPrice: fromJsonStringToBigInt(json['gasPrice'] as String?),
      utxosLimit: json['utxosLimit'] as int?,
    );

Map<String, dynamic> _$BuildMultisigToJson(BuildMultisig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fromPublicKeys', instance.fromPublicKeys);
  writeNotNull('destinations', instance.destinations);
  writeNotNull('gasAmount', instance.gasAmount);
  writeNotNull('gasPrice', toJsonBigIntToString(instance.gasPrice));
  writeNotNull('utxosLimit', instance.utxosLimit);
  return val;
}
