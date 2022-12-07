import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

import '../models/models.dart';

part 'explorer_client.g.dart';

@RestApi(baseUrl: "")
abstract class ExplorerClient {
  factory ExplorerClient(Dio dio, {String baseUrl}) = _ExplorerClient;

  //Blocks
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

  //Transactions
  @GET("/transactions/{transactionHash}")
  Future<List<ExplorerTransaction>> getTransactionHash({
    @Path("transactionHash") required String transactionHash,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/transactions/by/output-ref-key/{outputRefKey}")
  Future<List<ExplorerTransaction>> getTransactionsByOutputRefKeyOutputRefKey({
    @Path("outputRefKey") required String transactionHash,
    @Headers() Map<String, dynamic>? params,
  });

  //Addresses
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

  @GET("/addresses/{address}/timeranged-transactions")
  Future<List<ExplorerTransaction>> getAddressTimerangedTransactions({
    @Path("address") required String address,
    @Query("page") int? page,
    @Query("fromTs") int? fromTs,
    @Query("toTs") int? toTs,
    @Query("limit") int? limit,
    @Query("reverse") bool? reverse,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/addresses/{address}/total-transactions")
  Future<int> getAddressTotalTransactions({
    @Path("address") required String address,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/addresses/{address}/unconfirmed-transactions")
  Future<List<ExplorerTransaction>> getAddressTotalUnconfirmedTransactions({
    @Path("address") required String address,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/addresses/{address}/balance")
  Future<ExplorerAddressBalance> getAddressBalance({
    @Path("address") required String address,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/addresses/{address}/tokens")
  Future<List<String>> getAddressTokens({
    @Path("address") required String address,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/addresses/{address}/tokens/{tokenId}/transactions")
  Future<List<ExplorerTransaction>> getAddressTokenTransactions({
    @Path("address") required String address,
    @Path("tokenId") required String tokenId,
    @Query("page") int? page,
    @Query("limit") int? limit,
    @Query("reverse") bool? reverse,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/addresses/{address}/tokens/{tokenId}/balance")
  Future<ExplorerAddressBalance> getAddressTokenBalance({
    @Path("address") required String address,
    @Path("tokenId") required String tokenId,
    @Headers() Map<String, dynamic>? params,
  });

  //AddressActive
  @GET("/address-active")
  Future<List<String>> postAddressActive({
    @Headers() Map<String, dynamic>? params,
    @Body() List<String>? data,
  });

  //Infos
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

  //UnconfirmedTransactions
  @GET("/unconfirmed-transactions")
  Future<List<ExplorerTransaction>> getUnconfirmedTransactions({
    @Query("page") int? page,
    @Query("limit") int? limit,
    @Query("reverse") bool? reverse,
    @Headers() Map<String, dynamic>? params,
  });

  //Tokens
  @GET("/tokens")
  Future<List<ExplorerTransaction>> getTokens({
    @Query("page") int? page,
    @Query("limit") int? limit,
    @Query("reverse") bool? reverse,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/tokens/{tokenId}/transactions")
  Future<List<ExplorerTransaction>> getTokenIdTransactions({
    @Path("tokenId") required String address,
    @Query("page") int? page,
    @Query("limit") int? limit,
    @Query("reverse") bool? reverse,
    @Headers() Map<String, dynamic>? params,
  });

  //Charts
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

  @PUT("/utils/update-global-loglevel")
  Future<void> updateGlobalLogLevel(
    // Update global log level, accepted: TRACE, DEBUG, INFO, WARN, ERROR
    @Body() String data, {
    @Headers() Map<String, dynamic>? params,
  });

  @PUT("/utils/update-log-config")
  Future<void> updateLogConfig(
    @Body() List<LogBackValue> data, {
    @Headers() Map<String, dynamic>? params,
  });
}
