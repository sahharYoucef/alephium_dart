// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Events _$EventsFromJson(Map<String, dynamic> json) => Events(
      events: (json['events'] as List<dynamic>?)
          ?.map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
      chainFrom: json['chainFrom'] as String?,
      chainTo: json['chainTo'] as String?,
    );

Map<String, dynamic> _$EventsToJson(Events instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('events', instance.events);
  writeNotNull('chainFrom', instance.chainFrom);
  writeNotNull('chainTo', instance.chainTo);
  return val;
}
