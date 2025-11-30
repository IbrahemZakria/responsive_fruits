import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:responsive_fruits/core/constant/constant_string.dart';
import 'package:responsive_fruits/core/constant/secret_keys.dart';
import 'package:responsive_fruits/core/utils/functions/get_it_services.dart';
import 'package:responsive_fruits/core/utils/functions/shared_preferance.dart';
import 'package:responsive_fruits/core/utils/helper/notification/awesome_notification_service.dart';
import 'package:responsive_fruits/core/utils/helper/notification/push_notification.dart';
import 'package:responsive_fruits/features/auth/domain/entities/user_entity.dart';
import 'package:responsive_fruits/features/home/domain/entities/cart_item_entity.dart';
import 'package:responsive_fruits/features/home/domain/entities/product_entity.dart';

import '../../../bloco_bserver.dart';

class AppInitializer {
  static Future<void> init() async {
    await Firebase.initializeApp();
    setup();
    await Future.wait([
      SharedPreferance.init(),
      _initHive(),
      AwesomeNotificationService.initialize(),
      _initNotificationPermissions(),
    ]);

    // OneSignal
    OneSignal.initialize(SecretKeys.oneSignalAppId);

    // Bloc Observer
    Bloc.observer = MyBlocObserver();
    SharedPreferance.setData(key: ConstantString.islogin, value: false);
  }

  static Future<void> _initHive() async {
    await Hive.initFlutter();

    Hive.registerAdapter(CartItemEntityAdapter());
    Hive.registerAdapter(ProductEntityAdapter());
    Hive.registerAdapter(UserEntityAdapter());
    await Future.wait([
      Hive.openBox<CartItemEntity>(ConstantString.cartBox),
      Hive.openBox<UserEntity>("userBox"),
    ]);
  }

  static Future<void> _initNotificationPermissions() async {
    AwesomeNotificationService.requestPermission();
    PushNotification.requestPermission();
    PushNotification.setupNotifications();
  }
}
