import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/drawer_widgets/drawer_items.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/main_home_appbar.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/user_avatar.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainHomeAppbar(),
      body: Card(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.horizontal(right: Radius.circular(16)),
          ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverToBoxAdapter(child: CustomUserAvatar()),
              SliverToBoxAdapter(child: SizedBox(height: 16)),

              SliverToBoxAdapter(
                child: Text(
                  "${S.of(context).welcome} , Fruit Market",
                  style: AppTextSyles.textStyle22B(context),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 16)),
              DrawerItems(),
            ],
          ),
        ),
      ),
    );
  }
}
