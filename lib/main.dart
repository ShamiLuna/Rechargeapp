import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'core/app_export.dart';
import 'defaultoptionsfirebase.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(GetMaterialApp(
    builder: (context, child) => ResponsiveWrapper.builder(child,
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
          ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
        ],
        background: Container(color: Color(0xFFF5F5F5))),
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    translations: AppLocalization(),
    locale: Get.deviceLocale,
    //for setting localization strings
    fallbackLocale: Locale('en', 'US'),
    title: 'faz',
    initialBinding: InitialBindings(),
    initialRoute: AppRoutes.frame33712Screen,
    getPages: AppRoutes.pages,

  ));
}

// class MyApp extends StatelessWidget {
//   // double get h => ((this _width = 393);
//
//   // This widget is the root of your application.
//   @override
//   Widget build( context)
//   {
//     return GetMaterialApp(
//       builder: (context, child) => ResponsiveWrapper.builder(child,
//           maxWidth: 1200,
//           minWidth: 480,
//
//           defaultScale: true,
//           breakpoints: [
//             ResponsiveBreakpoint.resize(410, name: MOBILE),
//             ResponsiveBreakpoint.autoScale(410, name: MOBILE),
//             ResponsiveBreakpoint.autoScale(800, name: TABLET),
//             ResponsiveBreakpoint.resize(800, name: TABLET),
//             ResponsiveBreakpoint.resize(1000, name: DESKTOP),
//             ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
//             ResponsiveBreakpoint.autoScale(1000, name: DESKTOP),
//           ],
//           background: Container(color: Color(0xFFF5F5F5))),
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.dark(),
//       translations: AppLocalization(),
//       locale: Get.deviceLocale,
//       //for setting localization strings
//       fallbackLocale: Locale('en', 'US'),
//       title: 'faz',
//       initialBinding: InitialBindings(),
//       initialRoute: AppRoutes.frame33712Screen,
//       getPages: AppRoutes.pages,
//     );
//   }
// }
