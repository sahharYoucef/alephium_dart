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
      gas: json['gas'] as num?,
      gasPrice: json['gasPrice'] as String?,
      utxosLimit: json['utxosLimit'] as num?,
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
  writeNotNull('gas', instance.gas);
  writeNotNull('gasPrice', instance.gasPrice);
  writeNotNull('utxosLimit', instance.utxosLimit);
  return val;
}
