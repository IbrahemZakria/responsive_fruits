import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/drawer_widgets/drawer_body.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/home/custom_cursor_slider.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/home/seller_items.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/main_home_appbar.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MediaQuery.sizeOf(context).width < 1024 ? DrawerBody() : null,

      appBar: MainHomeAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CustomCursorSlider()),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: Row(
                children: [
                  Text("data"),
                  Spacer(),
                  TextButton(onPressed: () {}, child: Text("data")),
                ],
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SellerItems(),
          ],
        ),
      ),
    );
  }
}
