import 'package:flutter/material.dart';
import 'package:islamy/pages/home/taps/quran_page/sura_list.dart';
import 'package:islamy/utils/color_app.dart';
import 'package:islamy/utils/image_app.dart';
import 'package:islamy/utils/text_app.dart';

class QuranTap extends StatelessWidget {
  const QuranTap({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * .04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            cursorColor: ColorApp.primaryColor,
            decoration: InputDecoration(
              fillColor: ColorApp.blackBgColor,
              filled: true,
              hintText: 'Sura Name',
              hintStyle: TextApp.bold16White,
              prefixIcon: ImageIcon(AssetImage(ImageApp.search)),
              prefixIconColor: ColorApp.primaryColor,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: ColorApp.primaryColor, width: 2),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: ColorApp.primaryColor, width: 2),
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Column(
            spacing: height * 0.02,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Most Recently', style: TextApp.bold16White),
              SizedBox(
                height: height * .16,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: width * .04),
                      decoration: BoxDecoration(
                        color: ColorApp.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Al-Anbiya', style: TextApp.bold24Black),
                              SizedBox(height: height * .006),
                              Text('الأنبياء', style: TextApp.bold24Black),
                              SizedBox(height: height * .016),
                              Text('112 Verses', style: TextApp.bold14Black),
                            ],
                          ),
                          Image.asset(ImageApp.mostRecently),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: width * .03);
                  },
                  itemCount: 4,
                ),
              ),
              Text('Sura List', style: TextApp.bold16White),
              SizedBox(
                height: height * .324,
                child: Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return SuraList(index: index);
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: ColorApp.whiteColor,
                        endIndent: width * .10,
                        indent: width * .10,
                      );
                    },
                    itemCount: 114,
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
