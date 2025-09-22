import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/custom_button.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/titel_text_field.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/whats_app_form.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/main_home_appbar.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/user_avatar.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class ProfilePageBody extends StatelessWidget {
  const ProfilePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainHomeAppbar(
        actions: [],
        filter: false,
        titel: S.of(context).profile,
        leading: null,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(child: CustomUserAvatar()),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: Column(
              children: [
                TitelTextField(
                  titel: S.of(context).full_name,
                  hintText: S.of(context).first_and_last_name,
                ),
                WhatsAppForm(
                  titel: S.of(context).phone_number_whatsapp,
                  hintText: S.of(context).mobile_number,
                ),
                TitelTextField(
                  titel: S.of(context).password,
                  hintText: S.of(context).password,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 16),
                CustomButton(onTap: () {}, text: S.of(context).submit),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
