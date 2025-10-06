import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/adaptive_layout.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/drawer_widgets/drawer_body.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/profile/profile_page_body.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  static const String routeName = "ProfilePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobile: (context) => ProfilePageBody(),
        landscapeMobile: (context) => Row(
          children: [
            Expanded(child: DrawerBody()),
            Expanded(flex: 4, child: ProfilePageBody()),
          ],
        ),
        desktop: (context) => Row(
          children: [
            Expanded(child: DrawerBody()),
            Expanded(flex: 4, child: ProfilePageBody()),
          ],
        ),
        tablet: (context) => Row(
          children: [
            Expanded(child: DrawerBody()),
            Expanded(flex: 4, child: ProfilePageBody()),
          ],
        ),
      ),
    );
  }
}
