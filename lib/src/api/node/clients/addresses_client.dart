import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

import '../node_api.dart';

part 'addresses_client.g.dart';

@RestApi(baseUrl: "")
abstract class AddressClient {
  factory AddressClient(Dio dio, {String baseUrl}) = _AddressClient;
  @GET("/addresses/{address}/balance")
  Future<Balance> getAddressBalance(
    @Path("address") String address, {
    @Query("utxosLimit") num? utxosLimit,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/addresses/{address}/utxos")
  Future<Utxos> getAddressUtxos(
    @Query("address") String address, {
    @Query("utxosLimit") num? utxosLimit,
    @Headers() Map<String, dynamic>? params,
  });

  @GET("/addresses/{address}/group")
  Future<Group> getAddressGroup(
    @Query("address") String address, {
    @Headers() Map<String, dynamic>? params,
  });
}
