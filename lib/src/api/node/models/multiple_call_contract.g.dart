// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multiple_call_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MultipleCallContract _$MultipleCallContractFromJson(
        Map<String, dynamic> json) =>
    MultipleCallContract(
      calls: (json['calls'] as List<dynamic>?)
              ?.map((e) => CallContract.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MultipleCallContractToJson(
        MultipleCallContract instance) =>
    <String, dynamic>{
      'calls': instance.calls,
    };
