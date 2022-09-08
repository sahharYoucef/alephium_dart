// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferResults _$TransferResultsFromJson(Map<String, dynamic> json) =>
    TransferResults(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => TransferResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TransferResultsToJson(TransferResults instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('results', instance.results);
  return val;
}
