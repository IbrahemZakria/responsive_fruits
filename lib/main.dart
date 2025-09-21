import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/bloco_bserver.dart';
import 'package:responsive_fruits/responsive_fruits.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // يضمن تهيئة صحيحة للـ plugins
  Bloc.observer = MyBlocObserver();

  runApp(
    DevicePreview(enabled: true, builder: (context) => ResponsiveFruits()),
  );
}
