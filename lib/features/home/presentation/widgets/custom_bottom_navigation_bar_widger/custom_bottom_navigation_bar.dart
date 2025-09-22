import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/home/domain/entities/bottom_app_bar_entity.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/custom_bottom_navigation_bar_widger/navigation_bottom_app_bar_item.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.selectedItem,
    required this.selectedIndex,
  });

  final ValueChanged<int> selectedItem;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 204, 202, 202),
            blurRadius: 25,
            offset: const Offset(0, -.1),
          ),
        ],
      ),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: BottomAppBarEntity.getBottomAppBarItems(context)
            .asMap()
            .entries
            .map((entry) {
              int index = entry.key;
              var item = entry.value;

              return Expanded(
                flex: index == selectedIndex ? 3 : 2,
                child: GestureDetector(
                  onTap: () {
                    selectedItem(index);
                  },
                  child: NavigationBottomAppBarItem(
                    isselected: selectedIndex == index,
                    bottomAppBarEntity: item,
                  ),
                ),
              );
            })
            .toList(),
      ),
    );
  }
}
