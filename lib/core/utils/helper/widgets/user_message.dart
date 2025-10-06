import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_colors.dart';

// كومبوننت مخصص لعرض Toast

// دالة ثابتة لعرض التوست مع خيارات قابلة للتخصيص
void showUserMessage({
  required String message, // النص المطلوب عرضه
  Color backgroundColor = AppColors.kLightprimarycolor, // لون الخلفية الافتراضي
  Color textColor = Colors.white, // لون النص الافتراضي
  ToastGravity gravity = ToastGravity.BOTTOM, // موقع الظهور
  Toast length = Toast.LENGTH_SHORT, // المدة (قصيرة أو طويلة)
}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: length,
    gravity: gravity,
    backgroundColor: backgroundColor,
    textColor: textColor,
    fontSize: 16.0,
  );
}

// fluttertoast
