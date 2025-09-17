import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/forget_password_page.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/o_t_p_views.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/sign_in.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/phone_sign_up_page.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/sign_up.dart';
import 'package:responsive_fruits/features/home.dart/presentation/pages/home_page.dart';
import 'package:responsive_fruits/features/onboarding/presentation/pages/on_boarding_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnBoardingView());
    case SignIn.routeName:
      return MaterialPageRoute(builder: (context) => SignIn());
    case SignUp.routeName:
      return MaterialPageRoute(builder: (context) => SignUp());
    case PhoneSignUpPage.routeName:
      return MaterialPageRoute(builder: (context) => PhoneSignUpPage());
    case ForgetPasswordPage.routeName:
      return MaterialPageRoute(builder: (context) => ForgetPasswordPage());
    case OTPViews.routeName:
      return MaterialPageRoute(builder: (context) => OTPViews());
    case HomePage.routeName:
      return MaterialPageRoute(builder: (context) => HomePage());

    default:
      return MaterialPageRoute(
        builder: (context) =>
            const Scaffold(body: Center(child: Text('Route not found'))),
      );
  }
}
