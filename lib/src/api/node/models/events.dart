import 'package:json_annotation/json_annotation.dart';

import 'event.dart';

part 'events.g.dart';

@JsonSerializable(includeIfNull: false)
class Events {
  @JsonKey(name: 'events')
  final List<Event>? events;
  @JsonKey(name: 'chainFrom')
  final String? chainFrom;
  @JsonKey(name: 'chainTo')
  final String? chainTo;

  Events({
    this.events,
    this.chainFrom,
    this.chainTo,
  });

  factory Events.fromJson(Map<String, dynamic> json) => _$EventsFromJson(json);

  Map<String, dynamic> toJson() => _$EventsToJson(this);
}
