import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/custom_button.dart';

class AuthBottomBottton extends StatelessWidget {
  const AuthBottomBottton({
    super.key,
    required this.textButton,
    this.titel1,
    this.titel2,
    required this.textTap,
    required this.buttonTap,
  });
  final String textButton;
  final String? titel1, titel2;
  final void Function()? textTap, buttonTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(onTap: buttonTap, text: textButton),
        SizedBox(height: 8),
        Visibility(
          visible: titel1 != null && titel2 != null,
          child: RichText(
            text: TextSpan(
              text: titel1,
              style: AppTextSyles.textStyle13re(context),
              children: [
                TextSpan(
                  text: titel2,
                  style: AppTextSyles.textStyle13re(
                    context,
                  ).copyWith(color: Colors.blue),
                  recognizer: TapGestureRecognizer()..onTap = textTap,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
