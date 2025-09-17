import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_fruits/core/utils/assets.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 300,
            child: SvgPicture.asset(Assets.resourceImagesOmboarding),
          ),
        ],
      ),
    );
  }
}
