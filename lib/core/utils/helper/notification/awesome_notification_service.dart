import 'package:awesome_notifications/awesome_notifications.dart';
import 'dart:developer';
import 'package:flutter/material.dart';

class AwesomeNotificationService {
  /// 🔹 تهيئة Awesome Notifications عند تشغيل التطبيق
  static Future<void> initialize() async {
    await AwesomeNotifications().initialize(
      null, // null يعني هيستخدم أيقونة التطبيق الافتراضية
      [
        NotificationChannel(
          channelKey:
              'high_importance_channel', // 👈 نفس الاسم اللي في MainActivity
          channelName: 'High Importance Notifications',
          channelDescription: 'Used for important notifications',
          importance:
              NotificationImportance.Max, // 🔥 ده اللي بيخليه يظهر على الشاشة
          channelShowBadge: true,
          defaultColor: const Color(0xFF9D50DD),
          ledColor: const Color(0xFFFFFFFF),
        ),
      ],
    );

    log("✅ Awesome Notifications Initialized");
  }

  static Future<void> requestPermission() async {
    bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
    if (!isAllowed) {
      await AwesomeNotifications().requestPermissionToSendNotifications();
      log("✅ Notification permission requested");
    } else {
      log("👍 Notification permission already granted");
    }
  }

  static Future<void> showNotification({
    required String title,
    required String body,
  }) async {
    try {
      await AwesomeNotifications().createNotification(
        content: NotificationContent(
          displayOnBackground: true,
          displayOnForeground: true,
          criticalAlert: true,
          showWhen: true,
          roundedLargeIcon: true,
          id: DateTime.now().millisecondsSinceEpoch.remainder(5000),
          channelKey: 'high_importance_channel',
          title: title,
          body: body,
          notificationLayout: NotificationLayout.Default,
          wakeUpScreen: true, // 🔔 تظهر على الشاشة حتى لو الجهاز مقفول
          fullScreenIntent: true, // ⛔ تفتح فوق أي شاشة
          autoDismissible: true,
          category: NotificationCategory.Message,
        ),
      );
      log("📩 Local Notification Shown: $title");
    } catch (e) {
      log("❌ Failed to show notification: $e");
    }
  }
}
