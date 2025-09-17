import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key, this.supTitel});
  final String? supTitel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Fruit Market", style: AppTextSyles.textStyle30B(context)),
          ],
        ),
        const SizedBox(height: 24),
        Text(
          supTitel ?? S.of(context).welcome_to_app,
          style: AppTextSyles.textStyle28B(context),
        ),
      ],
    );
  }
}
