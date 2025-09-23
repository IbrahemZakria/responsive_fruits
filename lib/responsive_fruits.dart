import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/constant.dart';
import 'package:responsive_fruits/core/utils/functions/on_generate_route.dart';
import 'package:responsive_fruits/core/utils/functions/shared_preferance.dart';
import 'package:responsive_fruits/core/utils/helper/cubits/localization/localization_cubit.dart';
import 'package:responsive_fruits/features/home/presentation/cubit/home/home_cubit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_fruits/features/home/presentation/pages/adabtive_main_home_page.dart';
import 'package:responsive_fruits/features/onboarding/presentation/pages/on_boarding_view.dart';
import 'generated/l10n.dart';

class ResponsiveFruits extends StatelessWidget {
  const ResponsiveFruits({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeCubit()),
        BlocProvider(create: (context) => LocalizationCubit()),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp(
            key: const ValueKey('app'),
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              fontFamily: 'Montserrat',
              scaffoldBackgroundColor: Colors.white,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            ),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,

            locale: context.select<LocalizationCubit, Locale>((cubit) {
              final state = cubit.state;

              if (state is LanguageChangedState) {
                return Locale(state.languageCode);
              }
              final savedCode =
                  SharedPreferance.getData<String>(Constant.languageCode) ??
                  'ar';
              return Locale(savedCode);
            }),

            onGenerateRoute: onGenerateRoute,
            initialRoute:
                SharedPreferance.getData<bool>(Constant.islogin) == false ||
                    SharedPreferance.getData<bool>(Constant.islogin) == null
                ? OnBoardingView.routeName
                : AdabtiveMainHomePage.routeName,
          );
        },
      ),
    );
  }
}
