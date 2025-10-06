import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_colors.dart';
import 'package:responsive_fruits/core/utils/helper/thems/size_config.dart';

class AppTextSyles {
  static TextStyle textStyle14re(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: getResponsiveFontSize(context, fontSize: 14),
    color: AppColors.gray,
  );

  static TextStyle textStyle22B(BuildContext context) => TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: getResponsiveFontSize(context, fontSize: 20),
    color: Colors.black,
  );

  static TextStyle textStyle20sB(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: getResponsiveFontSize(context, fontSize: 20),
    color: Colors.black,
  );

  static TextStyle textStyle16sb(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    color: Colors.black,
  );

  static TextStyle textStyle13re(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: getResponsiveFontSize(context, fontSize: 13),
  );

  static TextStyle textStyle13b(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: getResponsiveFontSize(context, fontSize: 13),
  );

  static TextStyle textStyle13SB(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: getResponsiveFontSize(context, fontSize: 13),
  );

  static TextStyle textStyle20sb(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: getResponsiveFontSize(context, fontSize: 20),
    color: Colors.black,
  );

  static TextStyle textStyle16b(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    color: AppColors.black,
  );

  static TextStyle textStyle16reg(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    color: AppColors.gray,
  );
  static TextStyle textStyle18reg(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: getResponsiveFontSize(context, fontSize: 18),
    color: AppColors.gray,
  );

  static TextStyle textStyle16m(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    color: Colors.black,
  );

  static TextStyle textStyle11sB(BuildContext context) => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: getResponsiveFontSize(context, fontSize: 11),
    color: AppColors.gray,
  );

  static TextStyle textStyle30B(BuildContext context) => TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: getResponsiveFontSize(context, fontSize: 24),
    color: AppColors.kprimarycolor,
  );
  static TextStyle textStyle28B(BuildContext context) => TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: getResponsiveFontSize(context, fontSize: 24),
    color: Colors.black,
  );
}

/// دالة حساب حجم الخط Responsive
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

/// دالة تحديد الـ Scale حسب عرض الشاشة
double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
