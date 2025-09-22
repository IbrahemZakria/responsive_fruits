import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/forget_password_page.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/o_t_p_views.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/sign_in.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/phone_sign_up_page.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/sign_up.dart';
import 'package:responsive_fruits/features/home.dart/presentation/pages/adabtive_main_home_page.dart';
import 'package:responsive_fruits/features/home.dart/presentation/pages/contact_us_page.dart';
import 'package:responsive_fruits/features/home.dart/presentation/pages/profile_page.dart';
import 'package:responsive_fruits/features/onboarding/presentation/pages/on_boarding_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnBoardingView.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => OnBoardingView(),
      );
    case ProfilePage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => ProfilePage(),
      );
    case ContactUsPage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => ContactUsPage(),
      );
    case SignIn.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => SignIn(),
      );
    case SignUp.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => SignUp(),
      );
    case PhoneSignUpPage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => PhoneSignUpPage(),
      );
    case ForgetPasswordPage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => ForgetPasswordPage(),
      );
    case OTPViews.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => OTPViews(),
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
