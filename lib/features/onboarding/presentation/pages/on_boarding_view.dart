import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/adaptive_layout.dart';
import 'package:responsive_fruits/features/onboarding/presentation/widgets/land_scape/onboarding_body_land_scibe.dart';
import 'package:responsive_fruits/features/onboarding/presentation/widgets/onboarding_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const String routeName = "OnBoardingView";

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobile: (context) => OnboardingBody(),
      desktop: (context) => OnboardingBody(),
      landscapeMobile: (context) => OnboardingBodyLandScibe(),
      tablet: (context) => OnboardingBody(),
    );
  }
}
