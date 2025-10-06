import 'package:flutter/material.dart';
import 'package:responsive_fruits/constant.dart';
import 'package:responsive_fruits/core/utils/functions/shared_preferance.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/sign_in/sign_in_items.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/auth_header.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/auth_bottom_bottton.dart';
import 'package:responsive_fruits/features/home/presentation/pages/adabtive_main_home_page.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 32),

            AuthHeader(supTitel: S.of(context).login_to_wikala),
            SizedBox(height: 32),

            SignInItems(),
            SizedBox(height: 32),

            AuthBottomBottton(
              textButton: S.of(context).login,
              titel1: S.of(context).donot_have_account,
              titel2: S.of(context).sign_up,
              textTap: () {
                Navigator.pop(context);
              },
              buttonTap: () {
                SharedPreferance.setData(key: Constant.islogin, value: true);
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AdabtiveMainHomePage.routeName,
                  (route) => true,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
