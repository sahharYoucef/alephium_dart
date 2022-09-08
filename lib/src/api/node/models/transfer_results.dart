import 'package:json_annotation/json_annotation.dart';

import 'transfer_result.dart';

part 'transfer_results.g.dart';

@JsonSerializable(includeIfNull: false)
class TransferResults {
  @JsonKey(name: 'results')
  final List<TransferResult>? results;

  TransferResults({
    this.results,
  });

  factory TransferResults.fromJson(Map<String, dynamic> json) =>
      _$TransferResultsFromJson(json);

  Map<String, dynamic> toJson() => _$TransferResultsToJson(this);
}
