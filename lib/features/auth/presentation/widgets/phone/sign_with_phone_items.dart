import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_fruits/core/widgets/custome_text_form_field.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class SignWithPhoneItems extends StatelessWidget {
  const SignWithPhoneItems({
    super.key,
    required this.emailController,
    required this.phoneNumberController,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.fullNameController,
  });
  final TextEditingController emailController;
  final TextEditingController phoneNumberController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final TextEditingController fullNameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(8),
        CustomeTextFormField(
          textType: TextInputType.emailAddress,
          controller: emailController,
          hintText: S.of(context).email,
          validator: (value) {
            if (value!.isEmpty) {
              return S.of(context).please_enter_your_email;
            }
            return null;
          },
        ),
        CustomeTextFormField(
          textType: TextInputType.phone,
          controller: phoneNumberController,
          hintText: S.of(context).phone_number,
          validator: (value) {
            if (value!.isEmpty) {
              return S.of(context).please_enter_phone;
            }
            return null;
          },
        ),
        CustomeTextFormField(
          isPassword: true,
          textType: TextInputType.visiblePassword,

          controller: passwordController,
          hintText: S.of(context).password,
          validator: (value) {
            if (value!.isEmpty) {
              return S.of(context).please_enter_your_password;
            }
            return null;
          },
        ),
        CustomeTextFormField(
          isPassword: true,
          controller: confirmPasswordController,
          hintText: S.of(context).confirm_password,
          validator: (value) {
            if (value!.isEmpty) {
              return S.of(context).please_enter_your_password;
            }
            return null;
          },
        ),
        CustomeTextFormField(
          textType: TextInputType.name,
          controller: fullNameController,
          hintText: S.of(context).first_and_last_name,
          validator: (value) {
            if (value!.isEmpty) {
              return S.of(context).please_enter_your_name;
            }
            return null;
          },
        ),
      ],
    );
  }
}
