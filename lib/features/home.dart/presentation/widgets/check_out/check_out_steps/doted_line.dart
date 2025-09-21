import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class DotedLine extends StatelessWidget {
  const DotedLine({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DottedLine(
        dashLength: 8, // طول كل dash
        dashGapLength: 4, // المسافة بينهم
        dashColor: color,
      ),
    );
  }
}
