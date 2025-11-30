import 'package:flutter/material.dart';

class AddRegesterEntity {
  final String titel, image;
  Color color;
  final void Function()? ontap;
  AddRegesterEntity({
    required this.ontap,
    required this.titel,
    required this.image,
    this.color = Colors.transparent,
  });
}
