import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_fruits/core/constant/constant_string.dart';
import 'package:responsive_fruits/core/utils/router.dart';
import 'package:responsive_fruits/core/utils/functions/shared_preferance.dart';
import 'package:responsive_fruits/core/utils/helper/cubits/localization/localization_cubit.dart';
import 'package:responsive_fruits/features/home/presentation/cubit/home/home_cubit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_fruits/features/splash/presentation/pages/splash_page.dart';
import 'generated/l10n.dart';

import 'package:responsive_fruits/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:responsive_fruits/features/home/presentation/cubit/favorite/favorite_cubit.dart';

class ResponsiveFruits extends StatelessWidget {
  const ResponsiveFruits({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeCubit()),
        BlocProvider(create: (context) => LocalizationCubit()),
        BlocProvider(create: (context) => FavoriteCubit()),
        BlocProvider(create: (context) => CartCubit()),
      ],
      child: Builder(
        builder: (context) {
          final router = buildRouter(
            initialLocation: '/${SplashPage.routeName}',
          );

          return MaterialApp.router(
            routerDelegate: router.routerDelegate,
            routeInformationParser: router.routeInformationParser,
            routeInformationProvider: router.routeInformationProvider,
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
                  SharedPreferance.getData<String>(
                    ConstantString.languageCode,
                  ) ??
                  'ar';
              return Locale(savedCode);
            }),

            // router provided above as MaterialApp.router delegates
          );
        },
      ),
    );
  }
}
