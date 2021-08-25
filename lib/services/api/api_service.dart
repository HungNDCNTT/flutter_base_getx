

import 'package:flutter_base_getx/models/entities/token_entity.dart';
import 'package:flutter_base_getx/networks/api_client.dart';
import 'package:flutter_base_getx/networks/api_util.dart';
import 'package:get/get.dart';

part 'auth_api.dart';

class ApiService extends GetxService {
  late ApiClient _apiClient;

  Future<ApiService> init() async {
    _apiClient = ApiUtil.getApiClient();
    return this;
  }
}
