class AppConfigs {
  static const String appName = 'flutter getX app';

  /// DEV ENVIRONMENT

  /// STAGING ENVIRONMENT
  static const envName = "Staging";
  static const webUrl = "";
  static const baseUrl = "";
  static const socketUrl = '';

  /// PRODUCTION ENVIRONMENT

  ///Paging

  ///Local
  static const appLocal = 'vi_VN';
  static const appLanguage = 'en';

  ///DateFormat

  static const dateAPIFormat = 'dd/MM/yyyy';
  static const dateDisplayFormat = 'dd/MM/yyyy';

  static const dateTimeAPIFormat = "MM/dd/yyyy'T'hh:mm:ss.SSSZ";
  static const dateTimeDisplayFormat = 'dd/MM/yyyy HH:mm';

  ///Date range
  static final identityMinDate = DateTime(1900, 1, 1);
  static final identityMaxDate = DateTime.now();
  static final birthMinDate = DateTime(1900, 1, 1);
  static final birthMaxDate = DateTime.now();

  ///Font
  static const fontFamily = 'Roboto';
}

class FirebaseConfig {
  //Todo
}

class DatabaseConfig {
  //Todo
  static const int version = 1;
}
