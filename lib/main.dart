import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:responsive_fruits/bloco_bserver.dart';
import 'package:responsive_fruits/constant.dart';
import 'package:responsive_fruits/core/utils/functions/shared_preferance.dart';
import 'package:responsive_fruits/core/utils/helper/notification/push_notification.dart';
import 'package:responsive_fruits/features/home/domain/entities/cart_item_entity.dart';
import 'package:responsive_fruits/features/home/domain/entities/product_entity.dart';
import 'package:responsive_fruits/responsive_fruits.dart';
import 'package:responsive_fruits/core/utils/helper/notification/awesome_notification_service.dart'; // ⚠️ مهم
import 'package:onesignal_flutter/onesignal_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Enable verbose logging for debugging (remove in production)
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  // Initialize with your OneSignal App ID
  OneSignal.initialize("YOUR_APP_ID");
  // Use this method to prompt for push notifications.
  // We recommend removing this method after testing and instead use In-App Messages to prompt for notification permission.
  OneSignal.Notifications.requestPermission(false);

  // ✅ تفعيل استقبال الإشعارات في الخلفية
  FirebaseMessaging.onBackgroundMessage(
    PushNotification.firebaseMessagingBackgroundHandler,
  );

  // ✅ التهيئة الأساسية (Firebase + Shared Preferences)
  await Future.wait([Firebase.initializeApp(), SharedPreferance.init()]);

  // ✅ تهيئة Hive
  await Hive.initFlutter();
  Hive.registerAdapter(CartItemEntityAdapter());
  Hive.registerAdapter(ProductEntityAdapter());
  await Hive.openBox<CartItemEntity>(Constant.cartBox);

  // ✅ تهيئة AwesomeNotification (لازم قبل setupNotifications)
  AwesomeNotificationService.initialize();
  AwesomeNotificationService.requestPermission();
  // ✅ إعدادات الـ Bloc Observer
  Bloc.observer = MyBlocObserver();

  // ✅ طلب صلاحيات الإشعارات
  await PushNotification.requestPermission();

  // ✅ تفعيل استقبال الإشعارات (Foreground + Tap Action)
  await PushNotification.setupNotifications();

  // ✅ تشغيل التطبيق
  runApp(const ResponsiveFruits());
}
