import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/adaptive_layout.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/contact_us/contact_us_body.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/drawer_widgets/drawer_body.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});
  static const String routeName = "ContactUsPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobile: (context) => ContactUsBody(),
        landscapeMobile: (context) => Row(
          children: [
            Expanded(child: DrawerBody()),
            Expanded(flex: 4, child: ContactUsBody()),
          ],
        ),
        desktop: (context) => Row(
          children: [
            Expanded(child: DrawerBody()),
            Expanded(flex: 4, child: ContactUsBody()),
          ],
        ),
        tablet: (context) => Row(
          children: [
            Expanded(child: DrawerBody()),
            Expanded(flex: 4, child: ContactUsBody()),
          ],
        ),
      ),
    );
  }
}
