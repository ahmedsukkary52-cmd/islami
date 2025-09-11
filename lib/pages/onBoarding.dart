import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islamy/utils/image_app.dart';
import 'package:islamy/utils/route_app.dart';

import '../utils/color_app.dart';

class Onboarding extends StatelessWidget {
  final List<PageViewModel> pages = [
    PageViewModel(
      image: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            SizedBox(
              width: 290,
              height: 170,
              child: Image.asset(ImageApp.islamiLogo),
            ),
            SizedBox(height: 20),
            Image.asset(ImageApp.intro1),
          ],
        ),
      ),
      titleWidget: Text(
        'Welcome To Islami App',
        style: TextStyle(
          color: ColorApp.primaryColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      bodyWidget: SizedBox(),
      decoration: PageDecoration(bodyFlex: 1, imageFlex: 9),
    ),
    PageViewModel(
      image: Padding(
        padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(
              width: 290,
              height: 170,
              child: Image.asset(ImageApp.islamiLogo),
            ),
            SizedBox(height: 20),
            Image.asset(ImageApp.intro2, width: 390),
          ],
        ),
      ),
      titleWidget: Text(
        'Welcome To Islami',
        style: TextStyle(
          color: ColorApp.primaryColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      bodyWidget: Text(
        'We Are Very Excited To Have You In Our\nCommunity',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: ColorApp.primaryColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: PageDecoration(
        contentMargin: EdgeInsets.only(top: 20),
        bodyPadding: EdgeInsets.only(top: 20),
        fullScreen: true,
        bodyFlex: 1,
        imageFlex: 4,
      ),
    ),
    PageViewModel(
      image: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            SizedBox(
              width: 290,
              height: 170,
              child: Image.asset(ImageApp.islamiLogo),
            ),
            SizedBox(height: 20),
            Image.asset(ImageApp.intro3),
          ],
        ),
      ),
      titleWidget: Text(
        'Reading the Quran',
        style: TextStyle(
          color: ColorApp.primaryColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      bodyWidget: Text(
        'Read, and your Lord the Most Generous',
        style: TextStyle(
          color: ColorApp.primaryColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: PageDecoration(
        bodyPadding: EdgeInsets.only(top: 20),
        fullScreen: true,
        bodyFlex: 1,
        imageFlex: 4,
      ),
    ),
    PageViewModel(
      image: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            SizedBox(
              width: 290,
              height: 170,
              child: Image.asset(ImageApp.islamiLogo),
            ),
            SizedBox(height: 20),
            Image.asset(ImageApp.intro4),
          ],
        ),
      ),
      titleWidget: Text(
        'Bearish',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: ColorApp.primaryColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      bodyWidget: Text(
        'Praise the name of your Lord, the Most\nHigh',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: ColorApp.primaryColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: PageDecoration(
        contentMargin: EdgeInsets.only(top: 20),
        bodyPadding: EdgeInsets.only(top: 20),
        fullScreen: true,
        bodyFlex: 1,
        imageFlex: 4,
      ),
    ),
    PageViewModel(
      image: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            SizedBox(
              width: 290,
              height: 170,
              child: Image.asset(ImageApp.islamiLogo),
            ),
            SizedBox(height: 20),
            Image.asset(ImageApp.intro5),
          ],
        ),
      ),
      titleWidget: Text(
        'Holy Quran Radio',
        style: TextStyle(
          color: ColorApp.primaryColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      bodyWidget: Text(
        'You can listen to the Holy Quran Radio\nthrough the application for free and easily',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: ColorApp.primaryColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: PageDecoration(
        contentMargin: EdgeInsets.only(top: 20),
        bodyPadding: EdgeInsets.only(top: 20),
        fullScreen: true,
        bodyFlex: 1,
        imageFlex: 4,
      ),
    ),
  ];

  void onBoardingDone(BuildContext context) async {
    Navigator.of(context).pushReplacementNamed(AppRoute.homeRoutName);
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: pages,
      showBackButton: true,
      onDone: () => onBoardingDone(context),
      controlsPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 16),
      curve: Curves.easeInOut,
      globalBackgroundColor: ColorApp.blackColor,
      next: Text(
        'Next',
        style: TextStyle(
          color: ColorApp.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      done: Text(
        'Done',
        style: TextStyle(
          color: ColorApp.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      back: Text(
        'Back',
        style: TextStyle(
          color: ColorApp.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFF707070),
        activeSize: Size(22.0, 10.0),
        activeColor: ColorApp.primaryColor,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
