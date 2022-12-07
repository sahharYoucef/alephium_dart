import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

import '../node_api.dart';

part 'block_flow_client.g.dart';

@RestApi(baseUrl: "")
abstract class BlockFlowClient {
  factory BlockFlowClient(Dio dio, {String baseUrl}) = _BlockFlowClient;

  @GET("/blockflow")
  Future<FetchResponse> getBlockFlow({
    @Query("fromTs") required num fromTs,
    @Query("toTs") num? toTs,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/blockflow/blocks-with-events")
  Future<FetchResponse> getBlocksWithEvent({
    @Query("fromTs") required num fromTs,
    @Query("toTs") num? toTs,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/blockflow/blocks/{blockHash}")
  Future<BlockEntry> getBlockHash(
    @Path("blockHash") String blockHash, {
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/blockflow/blocks-with-events/{blockHash}")
  Future<BlockEntry> getgetBlocksWithEventHash(
    @Path("blockHash") String blockHash, {
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/blockflow/is-block-in-main-chain")
  Future<bool> getIsBlockInMainChain(
    @Query("blockHash") String blockHash, {
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/blockflow/hashes")
  Future<HashesAtHeight> getBlockFlowHashes({
    @Query("fromGroup") required num fromGroup,
    @Query("toGroup") required num toGroup,
    @Query("height") required num height,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/blockflow/chain-info")
  Future<ChainInfo> getBlockFlowChainInfo({
    @Query("fromGroup") required num fromGroup,
    @Query("toGroup") required num toGroup,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/blockflow/headers/{blockHash}")
  Future<BlockHeaderEntry> getBlockFlowHeadersBlockHash(
    @Query("blockHash") String blockHash, {
    @Headers() Map<String, dynamic>? params,
  });
}
