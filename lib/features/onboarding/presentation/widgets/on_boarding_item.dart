import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:responsive_fruits/features/onboarding/data/models/onboarding_model.dart';
import 'package:responsive_fruits/features/onboarding/presentation/widgets/onboarding_image.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({super.key, required this.model});
  final OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Column(
      children: [
        OnboardingImage(),
        SizedBox(height: 16),
        Text(model.titel, style: AppTextSyles.textStyle22B(context)),
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
          child: Text(
            model.subtitel,
            textAlign: TextAlign.center,
            style: AppTextSyles.textStyle16reg(context),
          ),
        ),
      ],
    );
  }
}
