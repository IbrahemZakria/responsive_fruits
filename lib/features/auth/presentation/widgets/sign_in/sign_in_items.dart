import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/forget_password_page.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/titel_text_field.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/whats_app_form.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class SignInItems extends StatelessWidget {
  const SignInItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8),
        WhatsAppForm(
          hintText: S.of(context).phone_number_whatsapp,
          titel: S.of(context).mobile_number,
        ),
        SizedBox(height: 8),
        TitelTextField(
          titel: S.of(context).password,
          hintText: S.of(context).password,
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
