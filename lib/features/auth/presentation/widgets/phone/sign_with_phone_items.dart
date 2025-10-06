import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/titel_text_field.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/whats_app_form.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class SignWithPhoneItems extends StatelessWidget {
  const SignWithPhoneItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitelTextField(
          titel: S.of(context).full_name,
          hintText: S.of(context).first_and_last_name,
        ),
        SizedBox(height: 8),
        WhatsAppForm(
          hintText: S.of(context).phone_number,
          titel: S.of(context).mobile_number,
        ),
        SizedBox(height: 8),
        TitelTextField(
          titel: S.of(context).password,
          hintText: S.of(context).password,
        ),
        SizedBox(height: 8),

        TitelTextField(
          titel: S.of(context).full_name,
          hintText: S.of(context).first_and_last_name,
        ),
      ],
    );
  }
}
