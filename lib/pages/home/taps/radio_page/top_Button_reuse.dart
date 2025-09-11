import 'package:flutter/material.dart';
import '../../../../utils/color_app.dart';
import '../../../../utils/text_app.dart';

class TopButtonContainer extends StatelessWidget {
  TopButtonContainer({
    super.key,
    required this.onTap,
    required this.text,
    this.isClicked = true,
  });

  bool isClicked = true;
  Function() onTap;
  String text;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height * .04,
        width: width * .43,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isClicked ? ColorApp.transparentColor : ColorApp.primaryColor,
        ),
        child: Text(
          text,
          style: isClicked ? TextApp.bold16White : TextApp.bold16Black,
        ),
      ),
    );
  }
}
