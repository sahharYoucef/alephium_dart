import 'package:alephium_dart/src/api/node/models/decode_unsigned_tx_result.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

import '../node_api.dart';

part 'transactions_client.g.dart';

@RestApi(baseUrl: "")
abstract class TransactionClient {
  factory TransactionClient(Dio dio, {String baseUrl}) = _TransactionClient;
  @GET("/mempool/transactions")
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
  Future<DecodeUnsignedTxResult> postTransactionsDecodeUnsignedTx(
    @Body() DecodeTransaction body, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/transactions/details/{txId}")
  @Headers({"Content-Type": "application/json"})
  Future<DecodeUnsignedTxResult> getTransactionsDetailsTxId({
    @Path("txId") required String txId,
    @Query("fromGroup") int? fromGroup,
    @Query("toGroup") int? toGroup,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/transactions/status")
  @Headers({"Content-Type": "application/json"})
  Future<TxStatus> getTransactionsStatus({
    @Body() required DecodeTransaction body,
    @Query("fromGroup") num? fromGroup,
    @Query("toGroup") num? toGroup,
    @Query("txId") required String txId,
    @Headers() Map<String, dynamic>? params,
  });
}
