import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_colors.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';

class CustomeTextFormField extends StatefulWidget {
  const CustomeTextFormField({
    super.key,
    this.textFormFieldKey,
    this.hintText,
    this.validator,
    this.onchanged,
    this.onSaved,
    this.prefixIcon,
    this.textColor = Colors.black,
    this.controller,
    this.borderRadius,
    this.maxLines,
    this.bordercolor = Colors.white,
    this.textType = TextInputType.emailAddress,
    this.isPassword = false,
  });

  final double? borderRadius;
  final String? hintText;
  final String? Function(String?)? validator;
  final Function(String)? onchanged;
  final void Function(String?)? onSaved;
  final Icon? prefixIcon;
  final GlobalKey<FormFieldState<dynamic>>? textFormFieldKey;
  final Color bordercolor;
  final Color? textColor;
  final TextEditingController? controller;
  final int? maxLines;
  final TextInputType? textType;
  final bool isPassword; // <-- جديد لتحديد إذا كان password

  @override
  State<CustomeTextFormField> createState() => _CustomeTextFormFieldState();
}

class _CustomeTextFormFieldState extends State<CustomeTextFormField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  OutlineInputBorder buildBorder({Color bordercolor = AppColors.lightgray}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
      borderSide: BorderSide(color: bordercolor, width: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.textFormFieldKey,
      controller: widget.controller,
      validator: widget.validator,
      onSaved: widget.onSaved,
      onChanged: widget.onchanged,
      maxLines: widget.maxLines ?? 1,
      obscureText: _obscureText,
      keyboardType: widget.textType,
      style: TextStyle(color: widget.textColor),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.kLightprimarycolor.withAlpha(10),
        prefixIcon: widget.prefixIcon,
        hintText: widget.hintText ?? '',
        hintStyle: AppTextSyles.textStyle13SB(context),
        enabledBorder: buildBorder(),
        errorBorder: buildBorder(bordercolor: AppColors.gray),
        focusedBorder: buildBorder(bordercolor: AppColors.gray),
        focusedErrorBorder: buildBorder(bordercolor: AppColors.gray),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.gray,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
      ),
    );
  }
}
