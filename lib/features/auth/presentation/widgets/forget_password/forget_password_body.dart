import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/o_t_p_views.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/auth_bottom_bottton.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/auth_header.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/whats_app_form.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 32),

            AuthHeader(supTitel: S.of(context).enter_your_number),
            SizedBox(height: 32),

            WhatsAppForm(
              titel: S.of(context).phone_number,
              hintText: S.of(context).mobile_number,
            ),
            SizedBox(height: 32),

            AuthBottomBottton(
              textButton: S.of(context).submit,

              textTap: () {
                Navigator.pop(context);
              },
              buttonTap: () {
                Navigator.pushNamed(context, OTPViews.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
