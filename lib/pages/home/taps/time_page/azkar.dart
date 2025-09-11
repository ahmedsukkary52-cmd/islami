import 'package:flutter/material.dart';
import 'package:islamy/utils/color_app.dart';
import 'package:islamy/utils/text_app.dart';

class Azkar extends StatelessWidget {
  Azkar({super.key, required this.image, required this.text});

  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        width: width * .43,
        height: height * .27,
        decoration: BoxDecoration(
          color: ColorApp.blackColor,
          borderRadius: BorderRadius.circular(20),
          border: BoxBorder.fromBorderSide(
            BorderSide(color: ColorApp.primaryColor, width: 2),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: height * .02),
          child: Column(
            children: [
              Image.asset(image),
              Spacer(),
              Text(text, style: TextApp.bold20White),
            ],
          ),
        ),
      ),
    );
  }
}
