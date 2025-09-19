import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/bloco_bserver.dart';
import 'package:responsive_fruits/responsive_fruits.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(const ResponsiveFruits());
}
