import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

import '../node_api.dart';

part 'wallets_client.g.dart';

@RestApi(baseUrl: "")
abstract class WalletClient {
  factory WalletClient(Dio dio, {String baseUrl}) = _WalletClient;

  @GET("/wallets")
  Future<List<WalletStatus>> getWallets();

  @PUT("/wallets")
  @Headers({"Content-Type": "application/json"})
  Future<List<WalletRestoreResult>> putWallets({
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/wallets")
  @Headers({"Content-Type": "application/json"})
  Future<List<WalletCreationResult>> potWallets(
    @Body() WalletCreation body, {
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/wallets/{walletName}")
  Future<List<WalletStatus>> getWalletsWalletName(
    @Path("walletName") String walletName, {
    @Headers() Map<String, dynamic>? params,
  });

  @DELETE("/wallets/{walletName}")
  @Headers({"Content-Type": "application/json"})
  Future<List<WalletStatus>> deleteWalletsWalletName(
    @Body() WalletDeletion body,
    @Path("walletName") String walletName, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/wallets/{walletName}/lock")
  Future<void> postWalletsWalletNameLock(
    @Path("walletName") String walletName, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/wallets/{walletName}/unlock")
  @Headers({"Content-Type": "application/json"})
  Future<void> postWalletsWalletNameUnlock(
    @Body() WalletUnlock body,
    @Path("walletName") String walletName, {
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/wallets/{walletName}/balances")
  Future<Balances> getWalletsWalletNameBalances(
    @Query("utxosLimit") int utxosLimit,
    @Body() WalletUnlock body,
    @Path("walletName") String walletName, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/wallets/{walletName}/reveal-mnemonic")
  @Headers({"Content-Type": "application/json"})
  Future<RevealMnemonicResult> postWalletsWalletNameRevealMnemonic(
    @Body() RevealMnemonic body,
    @Path("walletName") String walletName, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/wallets/{walletName}/transfer")
  @Headers({"Content-Type": "application/json"})
  Future<TransferResult> postWalletsWalletNameTransfer(
    @Body() Transfer body,
    @Path("walletName") String walletName, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/wallets/{walletName}/sweep-active-address")
  @Headers({"Content-Type": "application/json"})
  Future<TransferResults> postWalletsWalletNameSweepActiveAddress(
    @Body() Sweep body,
    @Path("walletName") String walletName, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/wallets/{walletName}/sweep-all-addresses")
  @Headers({"Content-Type": "application/json"})
  Future<TransferResults> postWalletsWalletNameSweepAllAddresses(
    @Body() Sweep body,
    @Path("walletName") String walletName, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/wallets/{walletName}/sign")
  @Headers({"Content-Type": "application/json"})
  Future<SignResult> postWalletsWalletNameSign(
    @Body() Sign body,
    @Path("walletName") String walletName, {
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/wallets/{walletName}/addresses")
  Future<Addresses> getWalletsWalletNameAddresses(
    @Path("walletName") String walletName, {
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/wallets/{walletName}/addresses/{address}")
  Future<AddressInfo> getWalletsWalletNameAddressesAddress(
    @Path("walletName") String walletName,
    @Path("address") String address, {
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/wallets/{walletName}/addresses")
  Future<List<MinerAddressesInfo>> getWalletsWalletNameMinerAddresses(
    @Path("walletName") String walletName, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/wallets/{walletName}/derive-next-address")
  Future<AddressInfo> postWalletsWalletNameDeriveNextAddress(
    @Query("group") num group,
    @Path("walletName") String walletName, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/wallets/{walletName}/derive-next-address")
  Future<List<AddressInfo>> postWalletsWalletNameDeriveNextMinerAddresses(
    @Path("walletName") String walletName, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/wallets/{walletName}/change-active-address")
  @Headers({"Content-Type": "application/json"})
  Future<void> postWalletsWalletNameChangeActiveAddress(
    @Body() ChangeActiveAddress body,
    @Path("walletName") String walletName, {
    @Headers() Map<String, dynamic>? params,
  });
}
