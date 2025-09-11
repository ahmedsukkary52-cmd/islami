import 'package:flutter/material.dart';
import 'package:islamy/pages/home/taps/time_page/azkar.dart';
import 'package:islamy/pages/home/taps/time_page/time_shape.dart';
import 'package:islamy/utils/image_app.dart';
import 'package:islamy/utils/text_app.dart';

class TimeTap extends StatelessWidget {
  TimeTap({super.key});

  List<Azkar> azkarList = [
    Azkar(image: ImageApp.azkarEvening, text: 'Evening Azkar'),
    Azkar(image: ImageApp.azkarMorning, text: 'Morning Azkar'),
    Azkar(image: ImageApp.azkarSleeping, text: 'Sleeping Azkar'),
    Azkar(image: ImageApp.azkarWaking, text: 'Waking Azkar'),
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TimeShape(),
            SizedBox(height: height * .02),
            Text('Azkar', style: TextApp.bold16White),
            SizedBox(height: height * .02),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.only(bottom: height * .02),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: height * .02,
                  crossAxisSpacing: width * .046,
                  mainAxisExtent: height * .27,
                ),
                itemCount: azkarList.length,
                itemBuilder: (context, index) {
                  return azkarList[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
