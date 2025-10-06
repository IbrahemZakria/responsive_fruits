import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:responsive_fruits/features/home/data/models/drawer_item_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.model});
  final DrawerItemModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Icon(Icons.arrow_forward_ios_outlined),
      leading: SvgPicture.asset(model.image),
      title: Text(model.titel, style: AppTextSyles.textStyle14re(context)),
    );
  }
}
