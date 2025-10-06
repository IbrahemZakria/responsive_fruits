import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/home/domain/entities/bottom_app_bar_entity.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/custom_bottom_navigation_bar_widger/selected_item.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/custom_bottom_navigation_bar_widger/un_selected_item.dart';

class NavigationBottomAppBarItem extends StatelessWidget {
  const NavigationBottomAppBarItem({
    super.key,
    required this.isselected,
    required this.bottomAppBarEntity,
  });
  final bool isselected;
  final BottomAppBarEntity bottomAppBarEntity;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return ScaleTransition(scale: animation, child: child);
      },
      child: isselected
          ? SelectedItem(
              key: const ValueKey('selected'),
              bottomAppBarEntity: bottomAppBarEntity,
            )
          : UnSelectedItem(
              key: const ValueKey('unselected'),
              bottomAppBarEntity: bottomAppBarEntity,
            ),
    );
  }
}
