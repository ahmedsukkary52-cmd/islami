import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/pages/home/taps/quran_page/other_style/other_style_content.dart';
import 'package:islamy/pages/home/taps/quran_page/sura_resources.dart';
import 'package:islamy/utils/color_app.dart';
import 'package:islamy/utils/image_app.dart';
import 'package:islamy/utils/route_app.dart';
import 'package:islamy/utils/text_app.dart';

class OtherStyle extends StatefulWidget {
  @override
  State<OtherStyle> createState() => _OtherStyleState();
}

class _OtherStyleState extends State<OtherStyle> {
  String verses = '';

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    if (verses == '') {
      loadSuraFile(index);
    }
    //ImageApp
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded),
        ),
        title: Text(
          SuraResources.englishQuranSuraList[index],
          style: TextApp.bold20Primary,
        ),
        actionsPadding: EdgeInsets.symmetric(horizontal: width * .04),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(AppRoute.suraDetailsRoutName);
            },
            style: ButtonStyle(
              minimumSize: WidgetStatePropertyAll(Size(0, 0)),
              padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(
                  horizontal: width * .02,
                  vertical: height * .007,
                ),
              ),
              backgroundColor: WidgetStatePropertyAll(ColorApp.primaryColor),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            child: Text(
              'Change Style',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: ColorApp.blackColor,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: ColorApp.blackColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * .04,
              vertical: height * .01,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(ImageApp.decoRight),
                Text(
                  SuraResources.arabicQuranSuraList[index],
                  style: TextApp.bold24Primary,
                ),
                Image.asset(ImageApp.decoLift),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                verses == ''
                    ? Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CircularProgressIndicator(
                              color: ColorApp.primaryColor,
                            ),
                          ],
                        ),
                      )
                    : Expanded(
                        child: SizedBox(
                          width: width * .90,
                          child: ListView.separated(
                            padding: EdgeInsets.only(top: height * .02),
                            itemBuilder: (context, index) {
                              return OtherStyleContent(content: verses);
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox();
                            },
                            itemCount: 1,
                          ),
                        ),
                      ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(padding: EdgeInsets.only(bottom: 3)),
              Image.asset(ImageApp.decoBottom),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> loadSuraFile(int index) async {
    String fileContent = await rootBundle.loadString(
      'assets/file/quran/${index + 1}.txt',
    );
    List<String> suraContent = fileContent.split('\n');
    for (int i = 0; i < suraContent.length; i++) {
      suraContent[i] = suraContent[i].trim();
      suraContent[i] += ' [${i + 1}] ';
    }
    verses = suraContent.join();
    setState(() {});
  }
}
