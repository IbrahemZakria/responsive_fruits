import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_colors.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/check_out/check_out_steps/chek_out_step_item.dart';

class AnimatedSwitchItem extends StatelessWidget {
  const AnimatedSwitchItem({
    super.key,
    required this.currentIndex,
    required this.titel,
    required this.pageIndex,
  });
  final int currentIndex;
  final String titel;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 300),
      child: currentIndex <= pageIndex
          ? ChekOutStepItem(color: AppColors.kprimarycolor, titel: titel)
          : ChekOutStepItem(color: AppColors.gray, titel: titel),
    );
  }
}
