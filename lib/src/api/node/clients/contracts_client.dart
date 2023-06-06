import 'package:alephium_dart/src/api/node/models/build_deploy_contract_tx.dart';
import 'package:alephium_dart/src/api/node/models/build_deploy_contract_tx_result.dart';
import 'package:alephium_dart/src/api/node/models/build_script_tx.dart';
import 'package:alephium_dart/src/api/node/models/build_script_tx_result.dart';
import 'package:alephium_dart/src/api/node/models/call_contract.dart';
import 'package:alephium_dart/src/api/node/models/call_contract_result.dart';
import 'package:alephium_dart/src/api/node/models/compile_contract_result.dart';
import 'package:alephium_dart/src/api/node/models/compile_project_result.dart';
import 'package:alephium_dart/src/api/node/models/compile_script_result.dart';
import 'package:alephium_dart/src/api/node/models/contract.dart';
import 'package:alephium_dart/src/api/node/models/contract_state.dart';
import 'package:alephium_dart/src/api/node/models/project.dart';
import 'package:alephium_dart/src/api/node/models/script.dart';
import 'package:alephium_dart/src/api/node/models/test_contract.dart';
import 'package:alephium_dart/src/api/node/models/test_contract_result.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

import '../models/multiple_call_contract.dart';
import '../models/multiple_call_contract_result.dart';

part 'contracts_client.g.dart';

@RestApi(baseUrl: "")
abstract class ContractClient {
  factory ContractClient(Dio dio, {String baseUrl}) = _ContractClient;
  @POST("/contracts/compile-script")
  @Headers({"Content-Type": "application/json"})
  Future<CompileScriptResult> postContractsCompileScript(
    @Body() Script data, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/contracts/unsigned-tx/execute-script")
  @Headers({"Content-Type": "application/json"})
  Future<BuildScriptTxResult> postContractsUnsignedTxExecuteScript(
    @Body() BuildScriptTx data, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/contracts/compile-contract")
  @Headers({"Content-Type": "application/json"})
  Future<CompileContractResult> postContractsCompileContract(
    @Body() Contract data, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/contracts/compile-project")
  @Headers({"Content-Type": "application/json"})
  Future<CompileProjectResult> postContractsCompileProject(
    @Body() Project data, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/contracts/unsigned-tx/deploy-contract")
  @Headers({"Content-Type": "application/json"})
  Future<BuildDeployContractTxResult> postContractsUnsignedTxDeployContract(
    @Body() BuildDeployContractTx data, {
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/contracts/{address}/state")
  Future<ContractState> getContractsAddressState(
    @Path("address") String address, {
    @Query("group") required num group,
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/contracts/test-contract")
  @Headers({"Content-Type": "application/json"})
  Future<TestContractResult> postContractsTestContract(
    @Body() TestContract data, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/contracts/call-contract")
  @Headers({"Content-Type": "application/json"})
  Future<CallContractResult> postContractsCallContract(
    @Body() CallContract data, {
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/contracts/multicall-contract")
  @Headers({"Content-Type": "application/json"})
  Future<MultipleCallContractResult> postContractsMultiCallContract(
    @Body() MultipleCallContract data, {
    @Headers() Map<String, dynamic>? params,
  });
}
