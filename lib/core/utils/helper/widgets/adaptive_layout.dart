import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  final Widget Function(BuildContext context) mobile;
  final Widget Function(BuildContext context)? tablet;
  final Widget Function(BuildContext context)? desktop;
  final Widget Function(BuildContext context)? landscapeMobile;

  const AdaptiveLayout({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
    this.landscapeMobile,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final orientation = MediaQuery.of(context).orientation;

    // Mobile only + landscape
    if (width < 600 &&
        orientation == Orientation.landscape &&
        landscapeMobile != null) {
      return landscapeMobile!(context);
    }

    if (width >= 1024 && desktop != null) {
      // Desktop layout
      return desktop!(context);
    } else if (width >= 600 && tablet != null) {
      // Tablet layout
      return tablet!(context);
    } else {
      // Mobile layoutx
      return mobile(context);
    }
  }
}
