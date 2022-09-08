// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchResponse _$FetchResponseFromJson(Map<String, dynamic> json) =>
    FetchResponse(
      blocks: (json['blocks'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>)
              .map((e) => BlockEntry.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
    );

Map<String, dynamic> _$FetchResponseToJson(FetchResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('blocks', instance.blocks);
  return val;
}
