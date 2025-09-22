import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_fruits/core/utils/assets.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/custom_button.dart';
import 'package:responsive_fruits/features/auth/presentation/widgets/titel_text_field.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/main_home_appbar.dart';
import 'package:responsive_fruits/generated/l10n.dart';

class ContactUsBody extends StatelessWidget {
  const ContactUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> icons = [
      Assets.resourceImagesPhoneIcon,
      Assets.resourceImagesFacebookIcon,
      Assets.resourceImagesInstgrameIcon,
      Assets.resourceImagesYoutubeIcon,
    ];
    return Scaffold(
      appBar: MainHomeAppbar(filter: false, titel: "Contact Us", leading: null),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  TitelTextField(
                    titel: S.of(context).name,
                    hintText: "hintText",
                  ),
                  TitelTextField(
                    titel: S.of(context).phone_number,
                    hintText: "hintText",
                  ),
                  TitelTextField(
                    titel: S.of(context).message,
                    hintText: "hintText",
                    maxLines: 4,
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  CustomButton(onTap: () {}, text: S.of(context).submit),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: icons.map((e) {
                      return Container(
                        margin: EdgeInsets.all(4),
                        child: CircleAvatar(
                          child: FittedBox(
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: SvgPicture.asset(e),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
