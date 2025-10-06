import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/sign_in.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/auth_bottom_bottton.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/phone/sign_with_phone_items.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/auth_header.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class PhoneBody extends StatelessWidget {
  const PhoneBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * .051,
        ),
        child: Column(
          children: [
            SizedBox(height: 32),

            AuthHeader(supTitel: S.of(context).sign_up_to_wikala),
            SizedBox(height: 32),
            SignWithPhoneItems(),
            SizedBox(height: 32),
            AuthBottomBottton(
              textButton: S.of(context).sign_up,
              titel1: S.of(context).already_have_account,
              titel2: S.of(context).login,
              textTap: () {
                Navigator.pushNamed(context, SignIn.routeName);
              },
              buttonTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
