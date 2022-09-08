// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_multisig_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildMultisigAddress _$BuildMultisigAddressFromJson(
        Map<String, dynamic> json) =>
    BuildMultisigAddress(
      keys: (json['keys'] as List<dynamic>?)?.map((e) => e as String).toList(),
      mrequired: json['mrequired'] as num?,
    );

Map<String, dynamic> _$BuildMultisigAddressToJson(
    BuildMultisigAddress instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('keys', instance.keys);
  writeNotNull('mrequired', instance.mrequired);
  return val;
}
