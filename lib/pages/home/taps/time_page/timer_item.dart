import 'package:flutter/material.dart';
import 'package:islamy/utils/color_app.dart';
import 'package:islamy/utils/text_app.dart';

class TimerItem extends StatelessWidget {
  const TimerItem({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: ColorApp.linearColor,
          ),
          width: width * .24,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ASR', style: TextApp.bold16White),
              Text('04:38', style: TextApp.bold32White),
              Text('PM', style: TextApp.bold16White),
            ],
          ),
        ),
      ],
    );
  }
}
