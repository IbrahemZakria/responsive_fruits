class DrawerItemModel {
  final String titel, image;
  final void Function()? onTap;

  DrawerItemModel({
    required this.titel,
    required this.image,
    required this.onTap,
  });
}
