import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/assets.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class BottomAppBarEntity {
  final String title, selectedImage, unSelectedImage;
  final int index;

  BottomAppBarEntity(
    this.title,
    this.selectedImage,
    this.unSelectedImage,
    this.index,
  );

  static List<BottomAppBarEntity> getBottomAppBarItems(BuildContext context) {
    final items = [
      BottomAppBarEntity(
        S.of(context).home,
        Assets.resourceImagesHomeIcon,
        Assets.resourceImagesUnselectedHome,
        0,
      ),
      BottomAppBarEntity(
        S.of(context).orders,
        Assets.resourceImagesOrdersIcon,
        Assets.resourceImagesSelsctedOrder,
        1,
      ),
      BottomAppBarEntity(
        S.of(context).basket,
        Assets.resourceImagesCartIcon,
        Assets.resourceImagesSelectedCart,
        2,
      ),
      BottomAppBarEntity(
        S.of(context).favorites,
        Assets.resourceImagesSelectedFavotrite,

        Assets.resourceImagesFavorit,
        3,
      ),
      if (MediaQuery.sizeOf(context).width < 800)
        BottomAppBarEntity(
          S.of(context).more,
          Assets.resourceImagesDrawer,
          Assets.resourceImagesSelectedDrawer,
          4,
        ),
    ];
    return items;
  }
}
