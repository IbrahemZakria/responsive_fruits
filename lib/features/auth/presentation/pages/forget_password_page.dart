import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/custome_relative_auth_widget.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/forget_password/forget_password_body.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});
  static const String routeName = "ForgetPasswordPage";

  @override
  Widget build(BuildContext context) {
    return CustomeRelativeAuthWidget(child: ForgetPasswordBody());
  }
}
