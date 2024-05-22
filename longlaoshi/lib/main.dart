import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
    PrefUtils().init()
  ]).then((value) {
    runApp(ProviderScope(child: MyApp()));
  });
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final themeType = ref.watch(themeNotifier).themeType;
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'LongLaoshi',
          navigatorKey: NavigatorService.navigatorKey,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            AppLocalizationDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
          supportedLocales: [
            Locale(
              'en',
              '',
            )
          ],
          initialRoute: AppRoutes.chatScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
