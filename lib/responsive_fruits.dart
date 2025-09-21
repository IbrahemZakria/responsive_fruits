import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/constant.dart';
import 'package:responsive_fruits/core/utils/functions/on_generate_route.dart';
import 'package:responsive_fruits/core/utils/functions/shared_preferance.dart';
import 'package:responsive_fruits/core/utils/helper/cubits/localization/localization_cubit.dart';
import 'package:responsive_fruits/features/home.dart/presentation/cubit/home_cubit.dart';
import 'package:responsive_fruits/features/home.dart/presentation/pages/adabtive_main_home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
      child: BlocBuilder<LocalizationCubit, LocalizationState>(
        builder: (context, state) {
          String langCode;

          if (state is LanguageChangedState) {
            langCode = state.languageCode; // 👈 اللغة الجديدة من emit
          } else {
            langCode =
                SharedPreferance.getData<String>(Constant.languageCode) ?? 'ar';
          }
          return MaterialApp(
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: Locale(langCode),
            supportedLocales: S.delegate.supportedLocales,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: onGenerateRoute,
            initialRoute: AdabtiveMainHomePage.routeName,
            title: 'Flutter Demo',
            theme: ThemeData(
              fontFamily: 'Montserrat',
              scaffoldBackgroundColor: Colors.white,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            ),
          );
        },
      ),
    );
  }
}
