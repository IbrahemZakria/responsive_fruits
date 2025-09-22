import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/bloco_bserver.dart';
import 'package:responsive_fruits/core/utils/functions/shared_preferance.dart';
import 'package:responsive_fruits/responsive_fruits.dart';
import 'package:device_preview/device_preview.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // يضمن تهيئة صحيحة للـ plugins
  Bloc.observer = MyBlocObserver();
  await SharedPreferance.init();

  runApp(
    DevicePreview(enabled: true, builder: (context) => ResponsiveFruits()),
  );
}
