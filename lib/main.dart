import 'package:flutter/material.dart';
import 'package:islamy/pages/home_page.dart';
import 'package:islamy/pages/onBoarding.dart';
import 'package:islamy/utils/route_app.dart';
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
      },
    );
  }
}
