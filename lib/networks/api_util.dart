import 'package:dio/dio.dart';
import 'package:flutter_base_getx/configs/app_configs.dart';

import 'api_client.dart';
import 'api_interceptors.dart';

class ApiUtil {
  static Dio? dio;

  static Dio getDio() {
    if (dio == null) {
      dio = Dio();
      dio!.options.connectTimeout = 60000;
      dio!.interceptors.add(ApiInterceptors());
    }
    return dio!;
  }

  static ApiClient getApiClient() {
    final apiClient = ApiClient(getDio(), baseUrl: AppConfigs.baseUrl);
    return apiClient;
  }

  /// Convert dio errors to Strings
  static String errorToString(dynamic e) {
    try {
      if (e is DioError) {
        if (e.type == DioErrorType.connectTimeout || e.type == DioErrorType.receiveTimeout || e.type == DioErrorType.sendTimeout) {
          return 'Connection error has occurred';
        }
        if (e.response?.data is Map<String, dynamic>) {
          if (e.response?.data['message'] != null) {
            return e.response?.data['message'];
          }
        }
        int statusCode = e.response!.statusCode!;
        if (statusCode != null && statusCode > 500) {
          return 'System error';
        }
      }
    } catch (e) {
      return 'System error';
    }
    return 'System error';
  }
}
