import 'package:flutter/material.dart';
import 'package:islamy/utils/color_app.dart';
import '../../../../utils/text_app.dart';

class SuraContent extends StatefulWidget {
  SuraContent({super.key, required this.content});

  final String content;

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: width * .04),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: width * .04,
          vertical: height * .02,
        ),
        decoration: BoxDecoration(
          color: isClicked ? ColorApp.primaryColor : ColorApp.transparentColor,
          border: BoxBorder.all(color: ColorApp.primaryColor),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          widget.content,
          style: isClicked ? TextApp.bold20Black : TextApp.bold20Primary,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
