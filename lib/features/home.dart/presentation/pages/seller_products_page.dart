import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_fruits/core/utils/assets.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/drawer_widgets/drawer_body.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/home/categories_ltems.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/home/custom_cursor_slider.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/main_home_appbar.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/products_items.dart';
import 'package:responsive_fruits/generated/l10n.dart';

// مثال صفحة تفاصيل Seller
class SellerProductsPage extends StatelessWidget {
  final String sellerName;
  SellerProductsPage({super.key, required this.sellerName});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MediaQuery.sizeOf(context).width < 1024 ? DrawerBody() : null,
      appBar: MainHomeAppbar(
        filter: true,
        leading: MediaQuery.sizeOf(context).width < 1024
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                  IconButton(
                    onPressed: () {
                      scaffoldKey.currentState?.openDrawer();
                    },
                    icon: Icon(Icons.menu),
                  ),
                ],
              )
            : null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CustomCursorSlider()),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(child: Text(S.of(context).category)),

            SliverToBoxAdapter(child: CategoriesLtems()),

            SliverToBoxAdapter(
              child: Row(
                children: [
                  Text(S.of(context).products),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: SvgPicture.asset(Assets.resourceImagesArrowDown),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            ProductsItems(),
          ],
        ),
      ),
    );
  }
}
