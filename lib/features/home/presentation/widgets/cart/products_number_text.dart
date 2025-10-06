import 'package:flutter/material.dart';

class ProductsNumberText extends StatelessWidget {
  const ProductsNumberText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(color: Color(0xffEBF9F1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(text)],
      ),
    );
  }
}
