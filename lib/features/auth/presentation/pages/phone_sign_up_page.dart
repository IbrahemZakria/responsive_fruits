import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/custome_relative_auth_widget.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/phone/phone_body.dart';

class PhoneSignUpPage extends StatelessWidget {
  const PhoneSignUpPage({super.key});
  static const String routeName = "PhoneSignUpPage";

  @override
  Widget build(BuildContext context) {
    return CustomeRelativeAuthWidget(child: PhoneBody());
  }
}
