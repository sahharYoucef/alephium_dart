// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misbehavior_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MisbehaviorAction _$MisbehaviorActionFromJson(Map<String, dynamic> json) =>
    MisbehaviorAction(
      peers:
          (json['peers'] as List<dynamic>?)?.map((e) => e as String).toList(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$MisbehaviorActionToJson(MisbehaviorAction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('peers', instance.peers);
  writeNotNull('type', instance.type);
  return val;
}
