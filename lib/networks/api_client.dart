import 'package:dio/dio.dart';
import 'package:flutter_base_getx/configs/app_configs.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: AppConfigs.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  ///User
 // @POST("/login")
 // Future<TokenEntity> authLogin(@Body() Map<String, dynamic> body);


}
