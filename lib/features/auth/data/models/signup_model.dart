import 'package:flutter/material.dart';

class SignupModel {
  final String titel, image;
  Color color;
  final void Function()? ontap;
  SignupModel({
    required this.ontap,
    required this.titel,
    required this.image,
    this.color = Colors.transparent,
  });
}
