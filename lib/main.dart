import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'core/app_export.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  // options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        builder: (context, child) => ResponsiveWrapper.builder(
            child,
            maxWidth: 1200,
            minWidth: 480,
            defaultScale: true,
            breakpoints: [
              ResponsiveBreakpoint.resize(410, name: MOBILE),
              ResponsiveBreakpoint.autoScale(410, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
              ResponsiveBreakpoint.resize(800, name: TABLET),
              ResponsiveBreakpoint.resize(1000, name: DESKTOP),
              ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
            ],

            background: Container(color: Color(0xFFF5F5F5))),
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        supportedLocales: [
          const Locale('en'),
          const Locale('ar'),
          const Locale('es'),
          const Locale('de'),
          const Locale('fr'),
          const Locale('el'),
          const Locale('et'),
          const Locale('nb'),
          const Locale('nn'),
          const Locale('pl'),
          const Locale('pt'),
          const Locale('ru'),
          const Locale('hi'),
          const Locale('ne'),
          const Locale('uk'),
          const Locale('hr'),
          const Locale('tr'),
          const Locale('lv'),
          const Locale('lt'),
          const Locale('ku'),
          const Locale('nl'),
          const Locale('it'),
          const Locale('ko'),
          const Locale('ja'),
          const Locale('id'),
          const Locale('cs'),
          const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'), // Generic Simplified Chinese 'zh_Hans'
          const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'), // Generic traditional Chinese 'zh_Hant'
        ],
        localizationsDelegates: [
          // CountryLocalizations.delegate,
          // GlobalMaterialLocalizations.delegate,
          // GlobalCupertinoLocalizations.delegate,
          // GlobalWidgetsLocalizations.delegate,
        ],
        translations: AppLocalization(),
        locale: Get.deviceLocale, //for setting localization strings
        fallbackLocale: Locale('en', 'US'),
        title: 'faz',
        initialBinding: InitialBindings(),
        initialRoute: AppRoutes.initialRoute,
        getPages: AppRoutes.pages,

      );
    });
  }
}
