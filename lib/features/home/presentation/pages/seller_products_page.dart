import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_fruits/core/utils/assets.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/home/categories_ltems.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/home/custom_cursor_slider.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/main_home_appbar.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/products_items.dart';
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
      appBar: MainHomeAppbar(filter: true),
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
