import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/custom_button.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/sign_up.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
    required this.length,
    required this.currentPage,
    required this.pageController,
  });
  final int length, currentPage;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          width: size.width * .3,
          onTap: () {
            if (currentPage == length - 1) {
              Navigator.pushNamed(context, SignUp.routeName);
            } else {
              pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          },
          text: currentPage == length - 1
              ? S.of(context).get_started
              : S.of(context).next,
        ),
      ],
    );
  }
}
