import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/sign_in.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class SignUpBottom extends StatelessWidget {
  const SignUpBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: S.of(context).already_member,
            style: AppTextSyles.textStyle18reg(
              context,
            ).copyWith(color: Colors.black),
            children: [
              TextSpan(
                text: S.of(context).sign_in,
                style: AppTextSyles.textStyle16reg(
                  context,
                ).copyWith(color: Colors.blueAccent),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, SignIn.routeName);
                    print("Sign In tapped!");
                  },
              ),
            ],
          ),
        ),
        SizedBox(height: 24),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: S.of(context).by_continue_agree,
            style: AppTextSyles.textStyle16reg(context),
            children: [
              TextSpan(
                text: S.of(context).terms_of_service,
                style: AppTextSyles.textStyle16reg(
                  context,
                ).copyWith(color: Colors.blueAccent),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // هنا تعمل Navigation لصفحة الشروط
                    print("Terms of service tapped!");
                  },
              ),
            ],
          ),
        ),
        SizedBox(height: 24),

        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: const TextStyle(color: Colors.black, fontSize: 14),
            children: [
              TextSpan(
                text: S.of(context).by_continue_agree,
                style: AppTextSyles.textStyle18reg(context),
              ),
              TextSpan(
                text: S.of(context).terms_of_service,
                style: AppTextSyles.textStyle16reg(
                  context,
                ).copyWith(color: Colors.blueAccent),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print("Terms of service tapped!");
                    // TODO: Navigate to Terms screen
                  },
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: S.of(context).and_our,
                style: AppTextSyles.textStyle18reg(context),
              ),
              TextSpan(
                text: S.of(context).privacy_policy,
                style: AppTextSyles.textStyle18reg(
                  context,
                ).copyWith(color: Colors.blueAccent),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print("Privacy Policy tapped!");
                    // TODO: Navigate to Privacy Policy screen
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
