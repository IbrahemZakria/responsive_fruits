import 'package:flutter/material.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/check_out/check_out_steps/adress_page_widgets/adress_page_body.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/check_out/check_out_steps/chek_out_steps_widget.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/check_out/delever_time_page.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/check_out/check_out_steps/adress_page_widgets/payment/payment_page.dart';

class ChekOutPage extends StatefulWidget {
  const ChekOutPage({super.key});

  @override
  State<ChekOutPage> createState() => _ChekOutPageState();
}

class _ChekOutPageState extends State<ChekOutPage> {
  final PageController pageController = PageController();
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      // هنا بنتأكد إن الودجت لسه mounted قبل setState
      if (mounted) {
        setState(() {
          currentIndex = pageController.page?.round() ?? 0;
        });
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 32)),
          SliverToBoxAdapter(child: CheckoutSteps(pageIndex: currentIndex)),
          SliverFillRemaining(
            child: PageView(
              onPageChanged: (value) => currentIndex = value,
              controller: pageController,
              children: [
                DeliveryTimePage(pageController: pageController),

                AdressPageBody(pageController: pageController),
                PaymentPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
