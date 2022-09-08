import 'package:json_annotation/json_annotation.dart';

import 'block_entry.dart';

part 'fetch_response.g.dart';

@JsonSerializable(includeIfNull: false)
class FetchResponse {
  @JsonKey(name: 'blocks')
  final List<List<BlockEntry>>? blocks;

  FetchResponse({
    this.blocks,
  });

  factory FetchResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FetchResponseToJson(this);
}
