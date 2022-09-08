import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

import '../node_api.dart';

part 'block_flow_client.g.dart';

@RestApi(baseUrl: "")
abstract class BlockFlowClient {
  factory BlockFlowClient(Dio dio, {String baseUrl}) = _BlockFlowClient;

  @GET("/blockflow")
  Future<FetchResponse> getBlockFlow(
    @Query("fromTs") num fromTs,
    @Query("toTs") num toTs, {
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/blockflow/blocks/{blockHash}")
  Future<BlockEntry> getBlockHash(
    @Path("blockHash") String blockHash, {
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/blockflow/is-block-in-main-chain")
  Future<bool> getIsBlockInMainChain(
    @Query("blockHash") String blockHash, {
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/blockflow/hashes")
  Future<HashesAtHeight> getBlockFlowHashes(
    @Query("fromGroup") num fromGroup,
    @Query("toGroup") num toGroup,
    @Query("height") num height, {
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/blockflow/chain-info")
  Future<ChainInfo> getBlockFlowChainInfo(
    @Query("fromGroup") num fromGroup,
    @Query("toGroup") num toGroup, {
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/blockflow/headers/{blockHash}")
  Future<BlockHeaderEntry> getBlockFlowHeadersBlockHash(
    @Query("blockHash") String blockHash, {
    @Headers() Map<String, dynamic>? params,
  });
}
