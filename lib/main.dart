import 'package:flutter/material.dart';
import 'package:flutter_base_getx/commons/export_commons_imp.dart';
import 'package:flutter_base_getx/generated/l10n.dart';
import 'package:flutter_base_getx/routers/route_config.dart';
import 'package:flutter_base_getx/services/export_services_imp.dart';
import 'package:flutter_base_getx/ui/pages/splash/splash_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

void main() async {
  await initServices();
  runApp(MyApp());
}

Future initServices() async {
  /// Initial all services
  await Get.putAsync(() => ApiService().init());
  await Get.putAsync(() => CacheService().init());
  await Get.putAsync(() => AuthService().init());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: hideKeyboard,
      child: GetMaterialApp(
        home: SplashPage(),
        theme: AppThemes.lightTheme,
        themeMode: ThemeMode.system,
        initialRoute: RoutesConfig.splash,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          S.delegate,
        ],
        locale: Locale.fromSubtags(languageCode: 'en'),
        supportedLocales: S.delegate.supportedLocales,
      ),
    );
  }

  /// Hidden keyboard when out tap
  void hideKeyboard() {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}
