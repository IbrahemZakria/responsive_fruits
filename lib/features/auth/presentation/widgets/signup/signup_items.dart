import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/assets.dart';
import 'package:responsive_fruits/features/auth/data/models/signup_model.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/phone_sign_up_page.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/signup/sign_up_item.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class SignupItems extends StatelessWidget {
  const SignupItems({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SignupModel> models = [
      SignupModel(
        titel: S.of(context).sign_in_with_phone,
        image: Assets.resourceImagesPhone,
        ontap: () {
          context.pushNamed(PhoneSignUpPage.routeName);
        },
      ),
      SignupModel(
        ontap: () {},
        titel: S.of(context).sign_in_with_google,
        image: Assets.resourceImagesGoogel,
      ),
      SignupModel(
        ontap: () {},
        titel: S.of(context).sign_in_with_facebook,
        image: Assets.resourceImagesFacebook,
        color: Colors.blue,
      ),
    ];
    return Column(
      children: models.map((e) {
        return SignUpItem(model: e);
      }).toList(),
    );
  }
}
