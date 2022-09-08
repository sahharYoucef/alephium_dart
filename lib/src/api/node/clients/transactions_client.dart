import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

import '../node_api.dart';

part 'transactions_client.g.dart';

@RestApi(baseUrl: "")
abstract class TransactionClient {
  factory TransactionClient(Dio dio, {String baseUrl}) = _TransactionClient;
  @GET("/transactions/unconfirmed")
  Future<List<UnconfirmedTransactions>> getUnconfirmedTransactions({
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/transactions/build")
  @Headers({"Content-Type": "application/json"})
  Future<BuildTransactionResult> postTransactionsBuild(
    @Body() BuildTransaction body, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/transactions/sweep-address/build")
  @Headers({"Content-Type": "application/json"})
  Future<BuildSweepAddressTransactionsResult> postTransactionsSweepAddressBuild(
    @Body() BuildSweepAddressTransactions body, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/transactions/submit")
  @Headers({"Content-Type": "application/json"})
  Future<TxResult> postTransactionsSubmit(
    @Body() SubmitTransaction body, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/transactions/decode-unsigned-tx")
  @Headers({"Content-Type": "application/json"})
  Future<UnsignedTx> postTransactionsDecodeUnsignedTx(
    @Body() DecodeTransaction body, {
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/transactions/status")
  @Headers({"Content-Type": "application/json"})
  Future<TxStatus> getTransactionsStatus(
    @Body() DecodeTransaction body,
    @Query("fromGroup") num fromGroup,
    @Query("toGroup") num toGroup,
    @Query("txId") String txId, {
    @Headers() Map<String, dynamic>? params,
  });
}
