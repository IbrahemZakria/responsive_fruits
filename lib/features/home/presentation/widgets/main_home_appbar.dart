import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_fruits/core/utils/assets.dart';
import 'package:responsive_fruits/core/utils/helper/thems/app_text_syles.dart';
import 'package:responsive_fruits/features/home/presentation/cubit/home/home_cubit.dart';
import 'package:responsive_fruits/features/home/presentation/widgets/home/custom_show_dialog.dart';

class MainHomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MainHomeAppbar({
    super.key,
    this.titel,
    this.filter,
    this.leading,
    this.actions,
  });
  final String? titel;
  final bool? filter;
  final Widget? leading;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, int>(
      builder: (context, state) {
        return AppBar(
          leadingWidth: 100,
          leading: leading,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,

          actions:
              actions ??
              [
                IconButton(
                  onPressed: () async {
                    // sendPushMessage(
                    //   "c1PFrScgTKCxGwnJXdyGp5:APA91bFEVF_2BuEG80Xo68GiLRcIBOsLQaMgwtft5SV6bVEc9WOG7XSWe44K1fLt3fwl4sOG8YYF77P_P3gHVU4u76mRsWcZ018GaQt80edsIM9-RHqPllo",
                    // );
                  },
                  icon: const Icon(Icons.search),
                ),
                filter == null
                    ? IconButton(
                        onPressed: () {
                          showDialog(
                            barrierDismissible: true,
                            context: context,
                            builder: (_) => CustomShowDialog(),
                          );
                        },
                        icon: SvgPicture.asset(Assets.resourceImagesFilter),
                      )
                    : SizedBox(),
              ],
          title: Text(
            titel ?? "Fruit Market",
            style: AppTextSyles.textStyle20sb(context),
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
