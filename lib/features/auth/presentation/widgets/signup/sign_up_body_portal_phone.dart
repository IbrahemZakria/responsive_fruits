import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/signup/sign_up_bottom.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/auth_header.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/signup/signup_items.dart';

class SignUpPortalPhoneBody extends StatelessWidget {
  const SignUpPortalPhoneBody({super.key});

  static const String routeName = "SignUp";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * .01),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),

            AuthHeader(),
            SizedBox(height: 32),
            SignupItems(),
            SizedBox(height: 32),
            SignUpBottom(),
          ],
        ),
      ),
    );
  }
}
