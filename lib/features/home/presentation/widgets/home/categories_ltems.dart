import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/assets.dart';
import 'package:responsive_fruits/features/home/data/models/category_model.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/home/category_item.dart';

class CategoriesLtems extends StatelessWidget {
  const CategoriesLtems({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> models = [
      CategoryModel(name: "fruits", image: Assets.resourceImagesCherries),
      CategoryModel(name: "vigitabels", image: Assets.resourceImagesCherries),
      CategoryModel(name: "electronics", image: Assets.resourceImagesCherries),
      CategoryModel(name: "fruits", image: Assets.resourceImagesCherries),
      CategoryModel(name: "vigitabels", image: Assets.resourceImagesCherries),
      CategoryModel(name: "electronics", image: Assets.resourceImagesCherries),
      CategoryModel(name: "fruits", image: Assets.resourceImagesCherries),
      CategoryModel(name: "vigitabels", image: Assets.resourceImagesCherries),
      CategoryModel(name: "electronics", image: Assets.resourceImagesCherries),
      CategoryModel(name: "fruits", image: Assets.resourceImagesCherries),
      CategoryModel(name: "vigitabels", image: Assets.resourceImagesCherries),
      CategoryModel(name: "electronics", image: Assets.resourceImagesCherries),
      CategoryModel(name: "fruits", image: Assets.resourceImagesCherries),
      CategoryModel(name: "vigitabels", image: Assets.resourceImagesCherries),
      CategoryModel(name: "electronics", image: Assets.resourceImagesCherries),
      CategoryModel(name: "fruits", image: Assets.resourceImagesCherries),
      CategoryModel(name: "vigitabels", image: Assets.resourceImagesCherries),
      CategoryModel(name: "electronics", image: Assets.resourceImagesCherries),
    ];
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 200, minHeight: 50),

      child: SizedBox(
        height: 150,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryItem(model: models[index]);
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(width: 8);
          },
          itemCount: models.length,
        ),
      ),
    );
  }
}
