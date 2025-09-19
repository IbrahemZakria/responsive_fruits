import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/home.dart/data/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.model});
  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Card(
          child: FittedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                model.image,
                fit: BoxFit.contain,
                width: 100,
                height: 100,
              ),
            ),
          ),
        ),
        Text(model.name),
      ],
    );
  }
}
