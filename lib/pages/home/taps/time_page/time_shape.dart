import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islamy/pages/home/taps/time_page/timer_item.dart';
import 'package:islamy/utils/color_app.dart';
import 'package:islamy/utils/image_app.dart';
import '../../../../utils/text_app.dart';

class TimeShape extends StatelessWidget {
  const TimeShape({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * .32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: ColorApp.brownColor,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * .07,
                  vertical: height * .017,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('16 Jul,\n2024', style: TextApp.bold16White),
                    Text(
                      '09 Muh,\n1446',
                      style: TextApp.bold16White,
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              Image.asset(ImageApp.timerShape, fit: BoxFit.fill),
              Positioned(
                width: width * .91,
                top: height * .01,
                child: Column(
                  children: [
                    Text('Pray Time', style: TextApp.bold20BlackBg),
                    Text('Tuesday', style: TextApp.bold20Black),
                  ],
                ),
              ),
              Positioned(
                top: height * .11,
                width: width * .91,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: height * .137,
                    enlargeCenterPage: true,
                    viewportFraction: 0.28,
                    enlargeFactor: 0.18,
                    enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  ),
                  items: List.generate(5, (index) => index + 1).map((index) {
                    return TimerItem();
                  }).toList(),
                ),
              ),
              Positioned(
                width: width * .91,
                bottom: height * .02,
                child: Padding(
                  padding: EdgeInsets.only(right: width * .06),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: width * .28)),
                      Text('Next Pray - ', style: TextApp.bold20BlackBg),
                      Text('02:28', style: TextApp.bold20Black),
                      Spacer(),
                      Icon(
                        Icons.volume_off_outlined,
                        color: ColorApp.blackColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
