import 'package:flutter/material.dart';
import 'package:islamy/pages/home/taps/hadeth_page/hadeth_tap.dart';
import 'package:islamy/pages/home/taps/quran_page/quran_tap.dart';
import 'package:islamy/pages/home/taps/radio_page/radio_tap.dart';
import 'package:islamy/pages/home/taps/sebha_page/sebha_tap.dart';
import 'package:islamy/pages/home/taps/time_page/time_tap.dart';
import 'package:islamy/utils/icon_app.dart';
import 'package:islamy/utils/image_app.dart';
import '../../widget/bottom_bar/bottom_bar.dart';
import '../../widget/bottom_bar/bottom_bar_item_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final List<String> backgrounds = [
    ImageApp.homeBg,
    ImageApp.hadethBg,
    ImageApp.sebhaBg,
    ImageApp.radioBg,
    ImageApp.timeBg,
  ];
  final List<Widget> allTaps = [
    QuranTap(),
    HadethTap(),
    SebhaTap(),
    RadioTap(),
    TimeTap(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgrounds[selectedIndex]),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .04,
              ),
            ),
            Center(
              child: Image.asset(
                ImageApp.islamiLogo,
                width: MediaQuery.of(context).size.width * .69,
              ),
            ),
            Expanded(child: allTaps[selectedIndex]),
          ],
        ),
        bottomNavigationBar: BottomBar(
          items: [
            BottomBarDataItem(imageIcon: IconApp.Q, label: 'Quran'),
            BottomBarDataItem(imageIcon: IconApp.H, label: 'Hadeth'),
            BottomBarDataItem(imageIcon: IconApp.S, label: 'Sebha'),
            BottomBarDataItem(imageIcon: IconApp.R, label: 'Radio'),
            BottomBarDataItem(imageIcon: IconApp.T, label: 'Time'),
          ],
          currentTap: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
