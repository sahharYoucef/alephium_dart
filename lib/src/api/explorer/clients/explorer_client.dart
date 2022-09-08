import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

import '../models/models.dart';

part 'explorer_client.g.dart';

@RestApi(baseUrl: "")
abstract class ExplorerClient {
  factory ExplorerClient(Dio dio, {String baseUrl}) = _ExplorerClient;
  @GET("/blocks")
  Future<ListBlocks> getBlocks({
    @Query("page") int? page,
    @Query("limit") int? limit,
    @Query("reverse") bool? reverse,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/blocks/{blockHash}")
  Future<BlockEntryLite> getBlockHash({
    @Path("blockHash") required String blockHash,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/blocks/{blockHash}/transactions")
  Future<List<ExplorerTransaction>> getBlockHashTransaction({
    @Path("blockHash") required String blockHash,
    @Query("page") int? page,
    @Query("limit") int? limit,
    @Query("reverse") bool? reverse,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/transactions/{transactionHash}")
  Future<List<ExplorerTransaction>> getTransactionHash({
    @Path("transactionHash") required String transactionHash,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/addresses/{address}")
  Future<ExplorerAddressInfo> getAddressInfo({
    @Path("address") required String address,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/addresses/{address}/transactions")
  Future<List<ExplorerTransaction>> getAddressTransactions({
    @Path("address") required String address,
    @Query("page") int? page,
    @Query("limit") int? limit,
    @Query("reverse") bool? reverse,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/addresses/{address}/total-transactions")
  Future<int> getAddressTotalTransactions({
    @Path("address") required String address,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/addresses/{address}/balance")
  Future<ExplorerAddressBalance> getAddressBalance({
    @Path("address") required String address,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/infos")
  Future<ExplorerInfo> getExplorerInfo({
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/infos/heights")
  Future<List<PerChainHeight>> getHeightsInfo({
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/infos/supply")
  Future<List<TokenSupply>> getSupplyHeightsInfo({
    @Query("page") int? page,
    @Query("limit") int? limit,
    @Query("reverse") bool? reverse,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/infos/supply/total-alph")
  Future<String> getAlphTotalSupplyInfo({
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/infos/supply/circulating-alph")
  Future<String> getAlphCirculationSupplyInfo({
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/infos/supply/reserved-alph")
  Future<String> getAlphReservedSupplyInfo({
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/infos/supply/locked-alph")
  Future<String> getAlphLockedSupplyInfo({
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/infos/total-transactions")
  Future<int> getTotalTransactionsInfo({
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/infos/average-block-times")
  Future<List<PerChainDuration>> getAverageBlockTimeInfo({
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/charts/hashrates")
  Future<List<Hashrate>> getHashratesChart({
    @Headers() Map<String, dynamic>? params,
    @Query("fromTs") int? fromTs,
    @Query("toTs") int? toTs,
    @Query("interval-type") String? intervalType,
  });

  @GET("/charts/transactions-count")
  Future<List<TimedCount>> getTransactionsCountChart({
    @Headers() Map<String, dynamic>? params,
    @Query("fromTs") int? fromTs,
    @Query("toTs") int? toTs,
    @Query("interval-type") String? intervalType,
  });

  @GET("/charts/transactions-count-per-chain")
  Future<List<PerChainTimedCount>> getTransactionsCountPerChainChart({
    @Headers() Map<String, dynamic>? params,
    @Query("fromTs") int? fromTs,
    @Query("toTs") int? toTs,
    @Query("interval-type") String? intervalType,
  });

  @PUT("/utils/sanity-check")
  Future<void> sanityCheck({
    @Headers() Map<String, dynamic>? params,
  });
}
