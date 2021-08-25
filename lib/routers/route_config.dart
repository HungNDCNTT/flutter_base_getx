import 'package:flutter_base_getx/ui/pages/home/home_page.dart';
import 'package:flutter_base_getx/ui/pages/sign_in/sign_in_page.dart';
import 'package:flutter_base_getx/ui/pages/splash/splash_page.dart';
import 'package:get/get.dart';

class RoutesConfig {
  ///main page
  static final String splash = "/splash";
  static final String home = "/home";
  static final String signIn = "/sign_in";

  static final List<GetPage> getPages = [
    GetPage(name: splash, page: () => SplashPage()),
    GetPage(name: home, page: () => HomePage()),
    GetPage(name: signIn, page: () => SignInPage()),
  ];
}
