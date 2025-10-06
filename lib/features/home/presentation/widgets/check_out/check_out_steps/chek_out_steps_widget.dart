import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_colors.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/check_out/check_out_steps/animated_switch_item.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/check_out/check_out_steps/doted_line.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({super.key, required this.pageIndex});
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          AnimatedSwitchItem(
            pageIndex: pageIndex,
            currentIndex: 0,
            titel: S.of(context).deliveryTime,
          ),

          // ✅ هنا Expanded يخلي الخط ياخد المساحة الباقية
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: DotedLine(
                color: pageIndex >= 1
                    ? AppColors.kprimarycolor
                    : AppColors.gray,
              ),
            ),
          ),

          AnimatedSwitchItem(
            pageIndex: pageIndex,
            currentIndex: 1,
            titel: S.of(context).deliveryAddress,
          ),

          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: DotedLine(
                color: pageIndex >= 2
                    ? AppColors.kprimarycolor
                    : AppColors.gray,
              ),
            ),
          ),

          AnimatedSwitchItem(
            pageIndex: pageIndex,
            currentIndex: 2,
            titel: S.of(context).payment,
          ),
        ],
      ),
    );
  }
}
