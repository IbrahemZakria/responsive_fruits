import 'package:flutter/material.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class ProductsNumberText extends StatelessWidget {
  const ProductsNumberText({super.key, required this.number});
  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(color: Color(0xffEBF9F1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(S.of(context).cartItemsCount(number))],
      ),
    );
  }
}
