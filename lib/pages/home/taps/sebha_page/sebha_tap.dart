import 'package:flutter/material.dart';
import 'package:islamy/pages/home/taps/sebha_page/sebha_animation.dart';
import 'package:islamy/utils/text_app.dart';

class SebhaTap extends StatelessWidget {
  const SebhaTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .03),
          Text('سَبِّحِ اسْمَ رَبِّكَ الأعلى', style: TextApp.bold36White),
          SizedBox(height: MediaQuery.of(context).size.height * .04),
          SebhaAnimation(),
        ],
      ),
    );
  }
}
