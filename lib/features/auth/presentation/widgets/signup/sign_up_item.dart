import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_colors.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:responsive_fruits/features/auth/data/models/signup_model.dart';

class SignUpItem extends StatelessWidget {
  const SignUpItem({super.key, required this.model});
  final SignupModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: model.ontap,
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: model.color == Colors.transparent ? Colors.white : model.color,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.lightgray),
          boxShadow: [
            BoxShadow(
              color: AppColors.darkgray.withValues(alpha: 240),
              blurRadius: 1,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(model.image),
              Flexible(child: SizedBox(width: 16)),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  model.titel,
                  style: model.color == Colors.transparent
                      ? AppTextSyles.textStyle14re(context)
                      : AppTextSyles.textStyle14re(
                          context,
                        ).copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
