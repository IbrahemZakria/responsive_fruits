import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/sign_up.dart';
import 'package:responsive_fruits/features/onboarding/data/models/onboarding_model.dart';
import 'package:responsive_fruits/features/onboarding/presentation/widgets/doted_indicator.dart';
import 'package:responsive_fruits/features/onboarding/presentation/widgets/get_started_button.dart';
import 'package:responsive_fruits/features/onboarding/presentation/widgets/on_boarding_item.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  final PageController pageController = PageController();
  int currentPage = 0;
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<OnboardingModel> models = [
      OnboardingModel(
        titel: S.of(context).e_shopping,
        subtitel: S.of(context).explore_fruits,
      ),
      OnboardingModel(
        titel: S.of(context).delivery_arrived,
        subtitel: S.of(context).order_arrived_place,
      ),
      OnboardingModel(
        titel: S.of(context).fast_payment,
        subtitel: S.of(context).quick_secure_checkout,
      ),
    ];

    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Visibility(
            visible: currentPage != models.length - 1,
            child: TextButton(
              onPressed: () {
                // Navigate using go_router
                // ignore: use_build_context_synchronously
                context.pushNamed(SignUp.routeName);
              },
              child: Text(
                S.of(context).skip,
                style: AppTextSyles.textStyle16reg(context),
              ),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),

      body: ListView(
        children: [
          SizedBox(height: 16),

          SizedBox(
            height: 500,
            width: size.width,
            child: PageView.builder(
              itemCount: models.length,
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return OnBoardingItem(model: models[index]);
              },
            ),
          ),
          SizedBox(height: 16),

          /// Dots Indicator
          DotedIndicator(
            length: models.length,
            currentPage: currentPage,
            onDotClicked: (index) {
              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
          ),

          SizedBox(height: 16),

          /// Next / Get Started Button
          GetStartedButton(
            length: models.length,
            currentPage: currentPage,
            pageController: pageController,
          ),
        ],
      ),
    );
  }
}
