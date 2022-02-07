import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:three_dots_assignment/models/crypto_api_response.dart';

part 'crypto_api.g.dart';

@RestApi(baseUrl: "https://min-api.cryptocompare.com/data/")
abstract class CryptoAPIClient {
  factory CryptoAPIClient(Dio dio, {String baseUrl}) = _CryptoAPIClient;

  @GET("/top/totalvolfull")
  Future<CryptoResponse> getCoins(@Query("limit") int limit,
      @Query("page") int page, @Query("tsym") String tsym, @Query("api_key") String api_key);
}
