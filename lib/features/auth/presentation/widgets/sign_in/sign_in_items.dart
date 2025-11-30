import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/custome_text_form_field.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/forget_password_page.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class SignInItems extends StatelessWidget {
  const SignInItems({
    super.key,
    required this.emailController,
    required this.passwordController,
  });
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8),
        CustomeTextFormField(
          textType: TextInputType.phone,
          hintText: S.of(context).phone_number_whatsapp,
          controller: emailController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).please_enter_phone;
            }
            return null;
          },
        ),
        SizedBox(height: 8),
        CustomeTextFormField(
          textType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).please_enter_your_password;
            }
            return null;
          },
          isPassword: true,
          hintText: S.of(context).password,
          controller: passwordController,
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                context.pushNamed(ForgetPasswordPage.routeName);
              },
              child: Text(
                S.of(context).forget_password,
                style: AppTextSyles.textStyle13re(
                  context,
                ).copyWith(color: Colors.blue),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
