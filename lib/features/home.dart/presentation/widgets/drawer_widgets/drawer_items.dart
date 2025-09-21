import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/assets.dart';
import 'package:responsive_fruits/features/home.dart/data/models/drawer_item_model.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/drawer_widgets/drawer_item.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/drawer_widgets/language_dialog.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class DrawerItems extends StatefulWidget {
  const DrawerItems({super.key});

  @override
  State<DrawerItems> createState() => _DrawerItemsState();
}

class _DrawerItemsState extends State<DrawerItems> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<DrawerItemModel> models = [
      DrawerItemModel(
        titel: S.of(context).profile,
        image: Assets.resourceImagesPerson,
        onTap: () {},
      ),
      DrawerItemModel(
        titel: S.of(context).favorites,
        image: Assets.resourceImagesFavorit,
        onTap: () {},
      ),
      DrawerItemModel(
        titel: S.of(context).language,
        image: Assets.resourceImagesGlobalLanguage,
        onTap: () {
          showLanguageDialog(context);
        },
      ),
      DrawerItemModel(
        titel: S.of(context).support,
        image: Assets.resourceImagesSupport,
        onTap: () {},
      ),
      DrawerItemModel(
        titel: S.of(context).about_us,
        image: Assets.resourceImagesAboutUs,
        onTap: () {},
      ),
    ];

    return SliverList.builder(
      itemCount: models.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: models[index].onTap,
        child: DrawerItem(model: models[index]),
      ),
    );
  }
}
