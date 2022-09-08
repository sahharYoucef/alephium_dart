// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_active_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeActiveAddress _$ChangeActiveAddressFromJson(Map<String, dynamic> json) =>
    ChangeActiveAddress(
      address: json['address'] as String?,
    );

Map<String, dynamic> _$ChangeActiveAddressToJson(ChangeActiveAddress instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  return val;
}
