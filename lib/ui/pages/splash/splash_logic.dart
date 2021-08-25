import 'package:dio/dio.dart';
import 'package:flutter_base_getx/routers/route_config.dart';
import 'package:flutter_base_getx/services/export_services_imp.dart';
import 'package:flutter_base_getx/ui/pages/home/home_page.dart';
import 'package:flutter_base_getx/ui/pages/sign_in/sign_in_page.dart';
import 'package:flutter_base_getx/ui/ui_commons/app_dialog.dart';
import 'package:flutter_base_getx/utils/logger.dart';
import 'package:get/get.dart';

import 'splash_state.dart';

class SplashLogic extends GetxController {
  final state = SplashState();
  final apiService = Get.find<ApiService>();
  final authService = Get.find<AuthService>();

  void checkLogin() async {
    await Future.delayed(Duration(seconds: 2));
    if (authService.token.value == null) {
      Get.offAll(SignInPage());
    } else {
      try {
        //Profile
        // UserEntity? myProfile = await apiService.getProfile();
        // authService.updateUser(myProfile);
      } catch (error) {
        logger.log(error);
        //Check 401
        if (error is DioError) {
          if (error.response?.statusCode == 401) {
            authService.signOut();
            checkLogin();
            return;
          }
        }
        AppDialog.defaultDialog(
          message: "An error happened. Please check your connection!",
          textConfirm: "Retry",
          onConfirm: () {
            checkLogin();
          },
        );
        return;
      }
      Get.offAll(HomePage());
    }
  }
}
