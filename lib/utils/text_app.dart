import 'dart:ui';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy/utils/color_app.dart';

class TextApp {
  static final TextStyle bold16White = GoogleFonts.cairo(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: ColorApp.whiteColor,
  );
  static final TextStyle bold16Black = GoogleFonts.cairo(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: ColorApp.blackColor,
    height: 2,
  );
  static final TextStyle bold16BlackBg = GoogleFonts.cairo(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: ColorApp.blackBgColor,
    height: 2,
  );
  static final TextStyle bold24Black = GoogleFonts.cairo(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ColorApp.blackColor,
  );
  static final TextStyle bold14Black = GoogleFonts.cairo(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: ColorApp.blackColor,
  );
  static final TextStyle bold14White = GoogleFonts.cairo(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: ColorApp.whiteColor,
  );
  static final TextStyle bold20White = GoogleFonts.cairo(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: ColorApp.whiteColor,
  );
  static final TextStyle bold36White = GoogleFonts.cairo(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: ColorApp.whiteColor,
  );
  static final TextStyle bold32White = GoogleFonts.cairo(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: ColorApp.whiteColor,
  );
  static final TextStyle bold20Primary = GoogleFonts.cairo(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: ColorApp.primaryColor,
    height: 2,
  );
  static final TextStyle bold24Primary = GoogleFonts.cairo(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ColorApp.primaryColor,
  );
  static final TextStyle bold20Black = GoogleFonts.cairo(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: ColorApp.blackColor,
  );
  static final TextStyle bold20BlackBg = GoogleFonts.cairo(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: ColorApp.blackBgColor,
  );
}
