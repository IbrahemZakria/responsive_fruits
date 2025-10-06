import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/adaptive_layout.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/responsive_auth_widgets.dart';

class CustomeRelativeAuthWidget extends StatelessWidget {
  const CustomeRelativeAuthWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobile: (context) => child,
        desktop: (context) => ResponsiveAuthWidgets(child: child),
        landscapeMobile: (context) => ResponsiveAuthWidgets(child: child),

        tablet: (context) => ResponsiveAuthWidgets(child: child),
      ),
    );
  }
}
