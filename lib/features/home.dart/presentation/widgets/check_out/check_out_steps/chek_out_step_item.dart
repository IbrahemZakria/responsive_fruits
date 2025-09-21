import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';

class ChekOutStepItem extends StatelessWidget {
  const ChekOutStepItem({super.key, required this.color, required this.titel});
  final Color color;
  final String titel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: color, width: 2),
          ),
          child: Center(
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            ),
          ),
        ),
        Text(
          titel,
          style: AppTextSyles.textStyle14re(context).copyWith(color: color),
        ),
      ],
    );
  }
}
