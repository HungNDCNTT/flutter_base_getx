import 'package:get/get.dart';

class Utils {

  /// Checks if string is email.
  static bool isEmail(String email) => GetUtils.isEmail(email);

  /// Checks if string is phone number.
  static bool isPhoneNumber(String email) => GetUtils.isPhoneNumber(email);

  /// Checks if string is URL.
  static bool isURL(String url) => GetUtils.isURL(url);
}
