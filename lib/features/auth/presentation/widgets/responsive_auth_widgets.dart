import 'package:flutter/material.dart';

class ResponsiveAuthWidgets extends StatelessWidget {
  const ResponsiveAuthWidgets({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 400, // أقصى عرض
                  minHeight: 300, // أقل ارتفاع
                  maxHeight: 800, // أقصى ارتفاع
                ),
                child: child,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
