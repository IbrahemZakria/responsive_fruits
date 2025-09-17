import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/functions/on_generate_route.dart';
import 'package:responsive_fruits/features/auth/presentation/pages/o_t_p_views.dart';
import 'package:responsive_fruits/features/home.dart/presentation/pages/home_page.dart';
import 'package:responsive_fruits/features/onboarding/presentation/pages/on_boarding_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

class ResponsiveFruits extends StatelessWidget {
  const ResponsiveFruits({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale("en"),
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: HomePage.routeName,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
