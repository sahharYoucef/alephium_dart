// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hashes_at_height.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HashesAtHeight _$HashesAtHeightFromJson(Map<String, dynamic> json) =>
    HashesAtHeight(
      headers:
          (json['headers'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$HashesAtHeightToJson(HashesAtHeight instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('headers', instance.headers);
  return val;
}
