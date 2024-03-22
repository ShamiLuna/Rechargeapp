import 'package:faz/core/app_export.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'main.dart';

Future <void> handleBackgroundMessage(RemoteMessage message)async{
print('Title: ${message.notification?.title}');
print('Body: ${message.notification?.body}');
print('Payload: ${message.data}');
}

class FirebaseAPi {
  final firebaseMessaging = FirebaseMessaging.instance;


  void handleMessage(RemoteMessage? message){
    if(message == null) return;

    navigatorKey.currentState?.pushNamed(
      AppRoutes.frame33729Screen
    );
  }

  Future initPushNotifications()async{
    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    //For background case
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  }

Future<void> initNotification() async{
  // _notificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()?.requestPermission();
  // final firebaseMessaging = FirebaseMessaging.instance;
  await firebaseMessaging.requestPermission();
  final fCMToken = await firebaseMessaging.getToken();
  print('Token: $fCMToken');
 // FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  initPushNotifications();
}}