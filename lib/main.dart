import 'package:faz/auth_controller.dart';
import 'package:faz/firebaseApi.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'core/app_export.dart';
import 'defaultoptionsfirebase.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'firebase_options.dart';

 final navigatorKey = GlobalKey<NavigatorState>();
Future<void> main() async {
  // _razorpay = Razorpay();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthController()));
  // _flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()?.requestPermission();
  await FirebaseAPi().initNotification();
  // final fcmToken = await FirebaseMessaging.instance.getToken();

  // print(fcmToken);
  //dependency injection we need to use it
  runApp
      (MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
      navigatorKey: navigatorKey,
    );
  }



}

// @override
// void iniState(){
//   super.initState();
//   _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
//   _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
//   _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
//
// }

// @override
 // void dispose(){
  // super.dispose();
  // _razorpay.clear(); // Removes all listeners
// }



// var options = {
//   'key': '<YOUR_KEY_ID>',
//   'amount': 50000, //in the smallest currency sub-unit.
//   'name': 'Acme Corp.',
//   'order_id': 'order_EMBFqjDHEEn80l', // Generate order_id using Orders API
//   'description': 'Fine T-Shirt',
//   'timeout': 60, // in seconds
//   'prefill': {
//     'contact': '9000090000',
//     'email': 'gaurav.kumar@example.com'
//   }
// };


// try {
//   _razorpay.open(options);
// }catch (e){
//   debugPrint('Error : e');
// }


// void _handlePaymentSuccess(PaymentSuccessResponse response) {
//   // Do something when payment succeeds
// }
//
// void _handlePaymentError(PaymentFailureResponse response) {
//   // Do something when payment fails
// }
//
// void _handleExternalWallet(ExternalWalletResponse response) {
//   // Do something when an external wallet is selected
// }



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
