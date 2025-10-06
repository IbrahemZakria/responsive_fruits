import 'dart:developer';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'awesome_notification_service.dart';
import 'package:url_launcher/url_launcher.dart';

@pragma('vm:entry-point') // ✅ يحافظ على الكلاس من الحذف في AOT
class PushNotification {
  @pragma('vm:entry-point') // ✅ ضروري جدًا للدالة الخلفية
  static Future<void> firebaseMessagingBackgroundHandler(
    RemoteMessage message,
  ) async {
    log("📩 Handling background message: ${message.messageId}");
    final notification = message.notification;
    final data = message.data;

    await AwesomeNotificationService.showNotification(
      title: notification?.title ?? data['title'] ?? "New Notification",
      body: notification?.body ?? data['body'] ?? "",
    );
  }

  static Future<void> requestPermission() async {
    final messaging = FirebaseMessaging.instance;
    final settings = await messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      log('✅ User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      log('🟡 User granted provisional permission');
    } else {
      log('❌ User declined or has not accepted permission');
    }
  }

  static Future<void> setupNotifications() async {
    final messaging = FirebaseMessaging.instance;
    final token = await messaging.getToken();
    log("📱 FCM Token: $token");

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      log("🔔 Foreground message: ${message.notification?.title}");
      final notification = message.notification;
      final data = message.data;

      await AwesomeNotificationService.showNotification(
        title: notification?.title ?? data['title'] ?? "No Title",
        body: notification?.body ?? data['body'] ?? "No Body",
      );

      _handleMessage(message);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
      log("👉 Opened from notification");
      _handleMessage(message);
    });
  }

  static void _handleMessage(RemoteMessage message) {
    if (message.data.containsKey('url')) {
      final dynamic urlData = message.data['url'];
      if (urlData is String && urlData.isNotEmpty) {
        log("🌐 Received URL: $urlData");
        _openUrl(urlData);
      } else {
        log("⚠️ Invalid URL format");
      }
    }
  }

  static Future<void> _openUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      log("❌ Could not launch $url");
    }
  }
}
