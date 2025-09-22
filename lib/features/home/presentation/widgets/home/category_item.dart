import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/home/data/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.model});
  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Card(
              child: FittedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(model.image, fit: BoxFit.contain),
                ),
              ),
            ),
          ),
          Text(model.name),
        ],
      ),
    );
  }
}
