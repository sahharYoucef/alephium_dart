import 'package:alephium_dart/src/api/node/node_api.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

part 'multisig_client.g.dart';

@RestApi(baseUrl: "")
abstract class MultisigClient {
  factory MultisigClient(Dio dio, {String baseUrl}) = _MultisigClient;

  @POST("/multisig/address")
  @Headers({"Content-Type": "application/json"})
  Future<BuildMultisigAddressResult> postMultisigAddress({
    @Body() required BuildMultisigAddress data,
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/multisig/build")
  @Headers({"Content-Type": "application/json"})
  Future<BuildTransactionResult> postMultisigBuild({
    @Body() required BuildMultisig data,
    @Headers() Map<String, dynamic>? params,
  });

  @POST("/multisig/submit")
  @Headers({"Content-Type": "application/json"})
  Future<TxResult> postMultisigSubmit({
    @Body() required SubmitMultisig data,
    @Headers() Map<String, dynamic>? params,
  });
}
