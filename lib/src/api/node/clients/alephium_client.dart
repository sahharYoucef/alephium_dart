import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

import '../node_api.dart';

part 'alephium_client.g.dart';

@RestApi(baseUrl: "")
abstract class AlephiumClient {
  factory AlephiumClient(Dio dio, {String baseUrl}) = _AlephiumClient;

  @GET("/wallets")
  Future<List<WalletStatus>> getWallets();

  @PUT("/wallets")
  @Headers({"Content-Type": "application/json"})
  Future<List<WalletRestoreResult>> putWallets(
    @Headers() Map<String, dynamic>? params,
  );

  @POST("/wallets")
  @Headers({"Content-Type": "application/json"})
  Future<List<WalletCreationResult>> potWallets(
    @Body() WalletCreation body,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/wallets/{walletName}")
  Future<List<WalletStatus>> getWalletsWalletName(
    @Path("walletName") String walletName,
    @Headers() Map<String, dynamic>? params,
  );

  @DELETE("/wallets/{walletName}")
  @Headers({"Content-Type": "application/json"})
  Future<List<WalletStatus>> deleteWalletsWalletName(
    @Body() WalletDeletion body,
    @Path("walletName") String walletName,
    @Headers() Map<String, dynamic>? params,
  );

  @POST("/wallets/{walletName}/lock")
  Future<void> postWalletsWalletNameLock(
    @Path("walletName") String walletName,
    @Headers() Map<String, dynamic>? params,
  );

  @POST("/wallets/{walletName}/unlock")
  @Headers({"Content-Type": "application/json"})
  Future<void> postWalletsWalletNameUnlock(
    @Body() WalletUnlock body,
    @Path("walletName") String walletName,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/wallets/{walletName}/balances")
  Future<Balances> getWalletsWalletNameBalances(
    @Query("utxosLimit") int utxosLimit,
    @Body() WalletUnlock body,
    @Path("walletName") String walletName,
    @Headers() Map<String, dynamic>? params,
  );

  @POST("/wallets/{walletName}/reveal-mnemonic")
  @Headers({"Content-Type": "application/json"})
  Future<RevealMnemonicResult> postWalletsWalletNameRevealMnemonic(
    @Body() RevealMnemonic body,
    @Path("walletName") String walletName,
    @Headers() Map<String, dynamic>? params,
  );

  @POST("/wallets/{walletName}/transfer")
  @Headers({"Content-Type": "application/json"})
  Future<TransferResult> postWalletsWalletNameTransfer(
    @Body() Transfer body,
    @Path("walletName") String walletName,
    @Headers() Map<String, dynamic>? params,
  );

  @POST("/wallets/{walletName}/sweep-active-address")
  @Headers({"Content-Type": "application/json"})
  Future<TransferResults> postWalletsWalletNameSweepActiveAddress(
    @Body() Sweep body,
    @Path("walletName") String walletName,
    @Headers() Map<String, dynamic>? params,
  );

  @POST("/wallets/{walletName}/sweep-all-addresses")
  @Headers({"Content-Type": "application/json"})
  Future<TransferResults> postWalletsWalletNameSweepAllAddresses(
    @Body() Sweep body,
    @Path("walletName") String walletName,
    @Headers() Map<String, dynamic>? params,
  );

  @POST("/wallets/{walletName}/sign")
  @Headers({"Content-Type": "application/json"})
  Future<SignResult> postWalletsWalletNameSign(
    @Body() Sign body,
    @Path("walletName") String walletName,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/wallets/{walletName}/addresses")
  Future<Addresses> getWalletsWalletNameAddresses(
    @Path("walletName") String walletName,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/wallets/{walletName}/addresses/{address}")
  Future<AddressInfo> getWalletsWalletNameAddressesAddress(
    @Path("walletName") String walletName,
    @Path("address") String address,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/wallets/{walletName}/addresses")
  Future<List<MinerAddressesInfo>> getWalletsWalletNameMinerAddresses(
    @Path("walletName") String walletName,
    @Headers() Map<String, dynamic>? params,
  );

  @POST("/wallets/{walletName}/derive-next-address")
  Future<AddressInfo> postWalletsWalletNameDeriveNextAddress(
    @Query("group") num group,
    @Path("walletName") String walletName,
    @Headers() Map<String, dynamic>? params,
  );

  @POST("/wallets/{walletName}/derive-next-address")
  Future<List<AddressInfo>> postWalletsWalletNameDeriveNextMinerAddresses(
    @Path("walletName") String walletName,
    @Headers() Map<String, dynamic>? params,
  );

  @POST("/wallets/{walletName}/change-active-address")
  @Headers({"Content-Type": "application/json"})
  Future<void> postWalletsWalletNameChangeActiveAddress(
    @Body() ChangeActiveAddress body,
    @Path("walletName") String walletName,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/infos/node")
  Future<NodeInfo> getNodeInfos(
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/infos/version")
  Future<NodeVersion> getNodeVersion(
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/infos/chain-params")
  Future<ChainParams> getChainParamsInfos(
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/infos/self-clique")
  Future<SelfClique> getSelfCliqueInfos(
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/infos/inter-clique-peer-info")
  Future<List<InterCliquePeerInfo>> getInterCliquePeerInfos(
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/infos/discovered-neighbors")
  Future<List<BrokerInfo>> getDiscoveredNeighborsInfos(
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/infos/misbehaviors")
  Future<List<PeerMisbehavior>> getMisBehaviorsInfos(
    @Headers() Map<String, dynamic>? params,
  );

  @POST("/infos/misbehaviors")
  @Headers({"Content-Type": "application/json"})
  Future<void> postMisBehaviorsInfos(
    @Body() MisbehaviorAction body,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/infos/unreachable")
  Future<List<String>> getUnreachableInfos(
    @Headers() Map<String, dynamic>? params,
  );

  @POST("/infos/discovery")
  @Headers({"Content-Type": "application/json"})
  Future<void> postDiscoveryInfos(
    @Body() DiscoveryAction body,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/infos/history-hashrate")
  Future<String> getHashRateHistoryInfos(
    @Query("fromTs") num fromTs,
    @Query("toTs") num toTs,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/infos/current-hashrate")
  Future<String> getCurrentHashRateInfos(
    @Query("timespan") num timespan,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/blockflow")
  Future<FetchResponse> getBlockFlow(
    @Query("fromTs") num fromTs,
    @Query("toTs") num toTs,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/blockflow/blocks/{blockHash}")
  Future<BlockEntry> getBlockHash(
    @Path("blockHash") String blockHash,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/blockflow/is-block-in-main-chain")
  Future<bool> getIsBlockInMainChain(
    @Query("blockHash") String blockHash,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/blockflow/hashes")
  Future<HashesAtHeight> getBlockFlowHashes(
    @Query("fromGroup") num fromGroup,
    @Query("toGroup") num toGroup,
    @Query("height") num height,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/blockflow/chain-info")
  Future<ChainInfo> getBlockFlowChainInfo(
    @Query("fromGroup") num fromGroup,
    @Query("toGroup") num toGroup,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/blockflow/headers/{blockHash}")
  Future<BlockHeaderEntry> getBlockFlowHeadersBlockHash(
    @Query("blockHash") String blockHash,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/addresses/{address}/balance")
  Future<Balance> getAddressBalance(
    @Query("address") String address,
    @Query("utxosLimit") num utxosLimit,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/addresses/{address}/utxos")
  Future<Utxos> getAddressUtxos(
    @Query("address") String address,
    @Query("utxosLimit") num utxosLimit,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/addresses/{address}/group")
  Future<Group> getAddressGroup(
    @Query("address") String address,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/transactions/unconfirmed")
  Future<List<UnconfirmedTransactions>> getUnconfirmedTransactions(
    @Headers() Map<String, dynamic>? params,
  );

  @POST("/transactions/build")
  @Headers({"Content-Type": "application/json"})
  Future<BuildTransactionResult> postTransactionsBuild(
    @Body() BuildTransaction body,
    @Headers() Map<String, dynamic>? params,
  );

  @POST("/transactions/sweep-address/build")
  @Headers({"Content-Type": "application/json"})
  Future<BuildSweepAddressTransactionsResult> postTransactionsSweepAddressBuild(
    @Body() BuildSweepAddressTransactions body,
    @Headers() Map<String, dynamic>? params,
  );

  @POST("/transactions/submit")
  @Headers({"Content-Type": "application/json"})
  Future<TxResult> postTransactionsSubmit(
    @Body() SubmitTransaction body,
    @Headers() Map<String, dynamic>? params,
  );

  @POST("/transactions/decode-unsigned-tx")
  @Headers({"Content-Type": "application/json"})
  Future<UnsignedTx> postTransactionsDecodeUnsignedTx(
    @Body() DecodeTransaction body,
    @Headers() Map<String, dynamic>? params,
  );

  @GET("/transactions/status")
  @Headers({"Content-Type": "application/json"})
  Future<TxStatus> getTransactionsStatus(
    @Body() DecodeTransaction body,
    @Query("fromGroup") num fromGroup,
    @Query("toGroup") num toGroup,
    @Query("txId") String txId,
    @Headers() Map<String, dynamic>? params,
  );
}
