import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/core/utils/assets.dart';
import 'package:responsive_fruits/features/home/data/models/drawer_item_model.dart';
import 'package:responsive_fruits/features/home/presentation/cubit/home/home_cubit.dart';
import 'package:responsive_fruits/features/home/presentation/pages/adabtive_main_home_page.dart';
import 'package:responsive_fruits/features/home/presentation/pages/contact_us_page.dart';
import 'package:responsive_fruits/features/home/presentation/pages/profile_page.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/drawer_widgets/drawer_item.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/drawer_widgets/language_dialog.dart';
import 'package:responsive_fruits/generated/l10n.dart';
import 'package:go_router/go_router.dart';

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
        onTap: () {
          context.pushNamed(ProfilePage.routeName);
        },
      ),
      DrawerItemModel(
        titel: S.of(context).favorites,
        image: Assets.resourceImagesFavorit,
        onTap: () {
          context.go('/${AdabtiveMainHomePage.routeName}/home');
          context.read<HomeCubit>().changeTab(3);
        },
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
        onTap: () {
          context.pushNamed(ContactUsPage.routeName);
        },
      ),
      DrawerItemModel(
        titel: S.of(context).about_us,
        image: Assets.resourceImagesAboutUs,
        onTap: () {
          final currentRoute = ModalRoute.of(context)?.settings.name;
          log(currentRoute.toString());
        },
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
