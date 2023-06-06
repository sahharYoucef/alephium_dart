// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multiple_call_contract_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MultipleCallContractResult _$MultipleCallContractResultFromJson(
        Map<String, dynamic> json) =>
    MultipleCallContractResult(
      results: (json['calls'] as List<dynamic>?)
              ?.map(
                  (e) => CallContractResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MultipleCallContractResultToJson(
        MultipleCallContractResult instance) =>
    <String, dynamic>{
      'calls': instance.results,
    };
