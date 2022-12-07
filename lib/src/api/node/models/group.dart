import 'package:json_annotation/json_annotation.dart';

part 'group.g.dart';

@JsonSerializable(includeIfNull: false)
class Group {
  @JsonKey(name: 'group')
  final int? group;

  Group({
    this.group,
  });

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);

  Map<String, dynamic> toJson() => _$GroupToJson(this);
}
