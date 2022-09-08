// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utxos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Utxos _$UtxosFromJson(Map<String, dynamic> json) => Utxos(
      utxos: (json['utxos'] as List<dynamic>?)
          ?.map((e) => Utxo.fromJson(e as Map<String, dynamic>))
          .toList(),
      warning: json['warning'] as String?,
    );

Map<String, dynamic> _$UtxosToJson(Utxos instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('utxos', instance.utxos);
  writeNotNull('warning', instance.warning);
  return val;
}
