import 'package:flutter/material.dart';

import 'package:responsive_fruits/features/auth/presentation/widgets/custome_relative_auth_widget.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/sign_in/sign_in_body.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  static const String routeName = "SignIn";

  @override
  Widget build(BuildContext context) {
    return CustomeRelativeAuthWidget(child: SignInBody());
  }
}
