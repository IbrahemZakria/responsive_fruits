import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/custome_relative_auth_widget.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/otp/o_t_p_body.dart';

class OTPViews extends StatelessWidget {
  const OTPViews({super.key});
  static const String routeName = "OTPViews";

  @override
  Widget build(BuildContext context) {
    return CustomeRelativeAuthWidget(child: OTPBody());
  }
}
