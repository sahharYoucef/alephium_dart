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

  @GET("/multisig/build")
  Future<BuildTransactionResult> postMultisigBuild({
    @Body() required BuildMultisig data,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/multisig/submit")
  Future<TxResult> postMultisigSubmit({
    @Body() required SubmitMultisig data,
    @Headers() Map<String, dynamic>? params,
  });
}
