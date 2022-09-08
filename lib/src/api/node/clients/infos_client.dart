import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

import '../node_api.dart';

part 'infos_client.g.dart';

@RestApi(baseUrl: "")
abstract class InfosClient {
  factory InfosClient(Dio dio, {String baseUrl}) = _InfosClient;

  @GET("/infos/node")
  Future<NodeInfo> getNodeInfos({
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/infos/version")
  Future<NodeVersion> getNodeVersion({
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/infos/chain-params")
  Future<ChainParams> getChainParamsInfos({
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/infos/self-clique")
  Future<SelfClique> getSelfCliqueInfos({
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/infos/inter-clique-peer-info")
  Future<List<InterCliquePeerInfo>> getInterCliquePeerInfos({
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/infos/discovered-neighbors")
  Future<List<BrokerInfo>> getDiscoveredNeighborsInfos({
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/infos/misbehaviors")
  Future<List<PeerMisbehavior>> getMisBehaviorsInfos({
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/infos/misbehaviors")
  @Headers({"Content-Type": "application/json"})
  Future<void> postMisBehaviorsInfos(
    @Body() MisbehaviorAction body, {
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/infos/unreachable")
  Future<List<String>> getUnreachableInfos({
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/infos/discovery")
  @Headers({"Content-Type": "application/json"})
  Future<void> postDiscoveryInfos(
    @Body() DiscoveryAction body, {
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/infos/history-hashrate")
  Future<String> getHashRateHistoryInfos(
    @Query("fromTs") num fromTs,
    @Query("toTs") num toTs, {
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/infos/current-hashrate")
  Future<String> getCurrentHashRateInfos(
    @Query("timespan") num timespan, {
    @Headers() Map<String, dynamic>? params,
  });
}
