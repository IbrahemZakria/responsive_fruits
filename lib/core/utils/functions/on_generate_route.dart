import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/forget_password_page.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/o_t_p_views.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/sign_in.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/phone_sign_up_page.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/sign_up.dart';
import 'package:responsive_fruits/features/home/presentation/pages/adabtive_main_home_page.dart';
import 'package:responsive_fruits/features/home/presentation/pages/contact_us_page.dart';
import 'package:responsive_fruits/features/home/presentation/pages/profile_page.dart';
import 'package:responsive_fruits/features/onboarding/presentation/pages/on_boarding_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnBoardingView.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => OnBoardingView(key: ValueKey("OnBoardingView")),
      );
    case ProfilePage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => ProfilePage(key: ValueKey("ProfilePage")),
      );
    case ContactUsPage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => ContactUsPage(key: ValueKey("ContactUsPage")),
      );
    case SignIn.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => SignIn(key: ValueKey("SignIn")),
      );
    case SignUp.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => SignUp(key: ValueKey("SignUp")),
      );
    case PhoneSignUpPage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => PhoneSignUpPage(key: ValueKey("PhoneSignUpPage")),
      );
    case ForgetPasswordPage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) =>
            ForgetPasswordPage(key: ValueKey("ForgetPasswordPage")),
      );
    case OTPViews.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => OTPViews(key: ValueKey("OTPViews")),
      );
    case AdabtiveMainHomePage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) =>
            AdabtiveMainHomePage(key: const ValueKey("MainHomePage")),
      );

    default:
      return MaterialPageRoute(
        settings: settings,

        builder: (context) =>
            const Scaffold(body: Center(child: Text('Route not found'))),
      );
  }
}
