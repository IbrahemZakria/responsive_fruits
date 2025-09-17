import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:responsive_fruits/features/home.dart/presentation/widgets/drawer_widgets/drawer_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String routeName = "HomePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < 600
          ? AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
              title: Text(
                "Fruit Market",
                style: AppTextSyles.textStyle20sb(context),
              ),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width <= 600 ? DrawerBody() : null,
      body: Container(),
    );
  }
}
