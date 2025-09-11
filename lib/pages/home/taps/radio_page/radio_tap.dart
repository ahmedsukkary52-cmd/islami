import 'package:flutter/material.dart';
import 'package:islamy/pages/home/taps/radio_page/radio_list.dart';
import 'package:islamy/pages/home/taps/radio_page/top_Button_reuse.dart';
import 'package:islamy/utils/color_app.dart';

class RadioTap extends StatefulWidget {
  RadioTap({super.key});

  @override
  State<RadioTap> createState() => _RadioTapState();
}

class _RadioTapState extends State<RadioTap> {
  int selectedIndex = 0;
  int? selectedIndex1;

  int? selectedIndex2;

  List<String> shikhRadioName = [
    'Radio Ibrahim Al-Akdar',
    'Radio Al-Qaria Yassen',
    'Radio Ahmed Al-trabulsi',
    'Radio Addokali Mohammad Alalim',
  ];

  List<String> shikhName = [
    'Ibrahim Al-Akdar',
    'Akram Alalaqmi',
    'Majed Al-Enezi',
    'Malik shaibat Alhamed',
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .046),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: ColorApp.blackBgColor,
                    ),
                    width: double.infinity,
                    child: Expanded(
                      child: Row(
                        children: [
                          TopButtonContainer(
                            isClicked: selectedIndex == 1,
                            onTap: () {
                              setState(() {
                                selectedIndex = 0;
                              });
                            },
                            text: 'Radio',
                          ),
                          Spacer(),
                          TopButtonContainer(
                            isClicked: selectedIndex == 0,
                            onTap: () {
                              setState(() {
                                selectedIndex = 1;
                              });
                            },
                            text: 'Reacts',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.only(top: height * .019),
                itemBuilder: (context, index) {
                  return RadioList(
                    text: selectedIndex == 0
                        ? shikhRadioName[index]
                        : shikhName[index],
                    isPushed: selectedIndex1 == index,
                    onTap: () {
                      setState(() {
                        if (selectedIndex1 == index) {
                          selectedIndex1 = null;
                        } else {
                          selectedIndex1 = index;
                        }
                      });
                    },
                    isMute: selectedIndex2 == index,
                    onTap2: () {
                      setState(() {
                        if (selectedIndex2 == index) {
                          selectedIndex2 = null;
                        } else {
                          selectedIndex2 = index;
                        }
                      });
                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: height * .017);
                },
                itemCount: shikhRadioName.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
