import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/bloco_bserver.dart';
import 'package:responsive_fruits/constant.dart';
import 'package:responsive_fruits/core/utils/functions/shared_preferance.dart';
import 'package:responsive_fruits/features/home/domain/entities/cart_item_entity.dart';
import 'package:responsive_fruits/features/home/domain/entities/product_entity.dart';
import 'package:responsive_fruits/responsive_fruits.dart';
import 'package:device_preview/device_preview.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await SharedPreferance.init();
  await Hive.initFlutter();
  Hive.registerAdapter(CartItemEntityAdapter());
  Hive.registerAdapter(ProductEntityAdapter());
  await Hive.openBox<CartItemEntity>(Constant.cartBox);

  runApp(
    DevicePreview(enabled: true, builder: (context) => ResponsiveFruits()),
  );
}
