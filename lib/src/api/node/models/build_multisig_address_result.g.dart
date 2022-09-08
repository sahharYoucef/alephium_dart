// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_multisig_address_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuildMultisigAddressResult _$BuildMultisigAddressResultFromJson(
        Map<String, dynamic> json) =>
    BuildMultisigAddressResult(
      address: json['address'] as String?,
    );

Map<String, dynamic> _$BuildMultisigAddressResultToJson(
    BuildMultisigAddressResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  return val;
}
