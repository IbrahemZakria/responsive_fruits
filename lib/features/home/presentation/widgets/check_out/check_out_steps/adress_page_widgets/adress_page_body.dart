import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/custom_button.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/check_out/check_out_steps/adress_page_widgets/form_fields.dart';

class AdressPageBody extends StatefulWidget {
  const AdressPageBody({super.key, required this.pageController});
  final PageController pageController;

  @override
  State<AdressPageBody> createState() => _AdressPageBodyState();
}

class _AdressPageBodyState extends State<AdressPageBody> {
  final GlobalKey<FormState> formKey = GlobalKey();

  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController adress = TextEditingController();
  final TextEditingController appartement = TextEditingController();
  final TextEditingController city = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController numberOfMonthExpiration = TextEditingController();

  @override
  void dispose() {
    // مهم جدًا علشان تمنع memory leaks
    name.dispose();
    email.dispose();
    adress.dispose();
    appartement.dispose();
    city.dispose();
    phone.dispose();
    numberOfMonthExpiration.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: FormFields(
                  phone: phone,
                  name: name,
                  email: email,
                  adress: adress,
                  city: city,
                  appartement: appartement,
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                      height: 70,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          widget.pageController.animateToPage(
                            2,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      text: "Continue",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
