import 'package:flutter/material.dart';
import 'package:islamy/pages/home/taps/sebha_page/sebha_painter.dart';
import 'package:islamy/utils/text_app.dart';
import '../../../../utils/image_app.dart';

class SebhaAnimation extends StatefulWidget {
  const SebhaAnimation({super.key});

  @override
  State<SebhaAnimation> createState() => _State();
}

class _State extends State<SebhaAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double turns = 0;
  int counter = 0;
  int counter2 = 0;
  List<String> azkar = ["سبحان الله", "الحمد لله", "الله أكبر"];
  int index = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (counter2 == 98) return;
          setState(() {
            counter2++;
            turns += 30 / 360;
            counter++;
            if (counter >= 33) {
              counter = 0;
              index++;
            }
          });
        },
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(ImageApp.sebhaHead),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .073,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedRotation(
                    duration: const Duration(milliseconds: 500),
                    turns: turns,
                    child: CustomPaint(
                      size: Size(
                        MediaQuery.of(context).size.width * .88,
                        MediaQuery.of(context).size.height * .4,
                      ),
                      painter: SebhaPainter(
                        beadRadius: MediaQuery.of(context).size.width * .044,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .03,
                      ),
                      Text(azkar[index], style: TextApp.bold36White),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Text("$counter", style: TextApp.bold36White),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
