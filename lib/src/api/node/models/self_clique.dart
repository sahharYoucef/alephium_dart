import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'self_clique.g.dart';

@JsonSerializable(includeIfNull: false)
class SelfClique {
  @JsonKey(name: 'cliqueId')
  final String? cliqueId;
  @JsonKey(name: 'nodes')
  final List<PeerAddress>? nodes;
  @JsonKey(name: 'selfReady')
  final bool? selfReady;
  @JsonKey(name: 'synced')
  final bool? synced;

  SelfClique({
    this.cliqueId,
    this.nodes,
    this.selfReady,
    this.synced,
  });

  factory SelfClique.fromJson(Map<String, dynamic> json) =>
      _$SelfCliqueFromJson(json);
  Map<String, dynamic> toJson() => _$SelfCliqueToJson(this);
}
