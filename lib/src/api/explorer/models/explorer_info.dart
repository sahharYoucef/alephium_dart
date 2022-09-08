import 'package:json_annotation/json_annotation.dart';

part 'explorer_info.g.dart';

@JsonSerializable(includeIfNull: false)
class ExplorerInfo {
  @JsonKey(name: 'releaseVersion')
  final String? releaseVersion;
  @JsonKey(name: 'commit')
  final String? commit;

  ExplorerInfo({
    this.releaseVersion,
    this.commit,
  });

  factory ExplorerInfo.fromJson(Map<String, dynamic> json) =>
      _$ExplorerInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ExplorerInfoToJson(this);
}
