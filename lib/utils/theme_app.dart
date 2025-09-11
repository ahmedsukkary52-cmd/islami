import 'package:flutter/material.dart';
import 'package:islamy/utils/color_app.dart';

class ThemeApp {
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: ColorApp.transparentColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorApp.primaryColor,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      selectedItemColor: ColorApp.whiteColor,
      selectedIconTheme: IconThemeData(color: ColorApp.whiteColor),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorApp.blackBgColor,
      centerTitle: true,
      iconTheme: IconThemeData(color: ColorApp.primaryColor),
    ),
  );
}
