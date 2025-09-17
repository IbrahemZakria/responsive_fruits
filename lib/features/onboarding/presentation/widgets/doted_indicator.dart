import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_colors.dart';

class DotedIndicator extends StatelessWidget {
  const DotedIndicator({
    super.key,
    required this.length,
    required this.currentPage,
    required this.onDotClicked,
  });

  final int length, currentPage;
  final ValueChanged<int> onDotClicked; // callback

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        length,
        (index) => GestureDetector(
          onTap: () => onDotClicked(index), // لما يضغط
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.symmetric(horizontal: 4),
            width: currentPage == index ? 20 : 16,
            height: currentPage == index ? 20 : 16,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentPage == index
                  ? AppColors.kprimarycolor
                  : AppColors.gray,
            ),
          ),
        ),
      ),
    );
  }
}
