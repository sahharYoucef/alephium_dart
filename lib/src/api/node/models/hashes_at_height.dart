import 'package:json_annotation/json_annotation.dart';

part 'hashes_at_height.g.dart';

@JsonSerializable(includeIfNull: false)
class HashesAtHeight {
  @JsonKey(name: 'headers')
  final List<String>? headers;

  HashesAtHeight({
    this.headers,
  });

  factory HashesAtHeight.fromJson(Map<String, dynamic> json) =>
      _$HashesAtHeightFromJson(json);

  Map<String, dynamic> toJson() => _$HashesAtHeightToJson(this);
}
