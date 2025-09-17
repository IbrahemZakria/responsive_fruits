import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/drawer_widgets/drawer_items.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/user_avatar.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: MediaQuery.sizeOf(context).width * .7,
        color: Colors.white,
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
    );
  }
}
