import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/custome_text_form_field.dart';

class TitelTextField extends StatelessWidget {
  const TitelTextField({
    super.key,
    required this.titel,
    required this.hintText,
    this.controller,
    this.maxLines,
  });
  final int? maxLines;
  final String titel;
  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titel, style: AppTextSyles.textStyle13re(context)),
        const SizedBox(height: 8),
        CustomeTextFormField(
          hintText: hintText,
          controller: controller,
          maxLines: maxLines,
        ),
      ],
    );
  }
}
