import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/custome_relative_auth_widget.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/signup/sign_up_body_portal_phone.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  static const String routeName = "SignUp";

  @override
  Widget build(BuildContext context) {
    return CustomeRelativeAuthWidget(child: SignUpPortalPhoneBody());
  }
}
