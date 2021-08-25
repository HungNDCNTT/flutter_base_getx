import 'package:flutter_base_getx/models/enums/load_status.dart';
import 'package:get/get.dart';

class SplashState {
  Rx<LoadStatus> loginState = LoadStatus.initial.obs;

  SplashState() {
    ///Initialize variables
  }
}
