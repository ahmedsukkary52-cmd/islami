import 'package:flutter/material.dart';
import 'package:islamy/pages/home/home_page.dart';
import 'package:islamy/pages/home/taps/quran_page/other_style/other_style.dart';
import 'package:islamy/pages/home/taps/quran_page/sura_details_screen.dart';
import 'package:islamy/pages/onBoarding.dart';
import 'package:islamy/utils/route_app.dart';
import 'package:islamy/utils/theme_app.dart';

void main (){
  runApp(IslamiApp());
}
class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.onboardingRoutName,
      routes: {
        AppRoute.onboardingRoutName: (context) => Onboarding(),
        AppRoute.homeRoutName : (context) => HomePage(),
        AppRoute.suraDetailsRoutName: (context) => SuraDetailsScreen(),
        AppRoute.otherStyleRouteName: (context) => OtherStyle(),
      },
      darkTheme: ThemeApp.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
