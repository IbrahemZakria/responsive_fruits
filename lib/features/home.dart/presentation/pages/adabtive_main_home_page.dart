import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/adaptive_layout.dart';
import 'package:responsive_fruits/features/home.dart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:responsive_fruits/features/home.dart/presentation/pages/main_home_page.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/drawer_widgets/drawer_body.dart';

class AdabtiveMainHomePage extends StatelessWidget {
  const AdabtiveMainHomePage({super.key});
  static const String routeName = "AdabtiveMainHomePage";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        body: AdaptiveLayout(
          mobile: (context) => MainHomePage(),
          landscapeMobile: (context) => MainHomePage(),

          tablet: (context) => MainHomePage(),

          desktop: (context) => Row(
            children: [
              DrawerBody(),
              Expanded(flex: 4, child: MainHomePage()),
            ],
          ),
        ),
      ),
    );
  }
}
