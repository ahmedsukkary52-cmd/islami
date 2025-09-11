import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/pages/home/taps/hadeth_page/model/hadeth_data.dart';
import 'package:islamy/utils/color_app.dart';
import 'package:islamy/utils/image_app.dart';
import 'package:islamy/utils/text_app.dart';

class HadethItem extends StatefulWidget {
  HadethItem({super.key, required this.index});

  final int index;

  @override
  State<HadethItem> createState() => _HadethItemState();
}

class _HadethItemState extends State<HadethItem> {
  HadethData? hadethData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadHadethFile();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return hadethData == null
        ? Center(child: CircularProgressIndicator(color: ColorApp.blackColor))
        : Padding(
            padding: EdgeInsets.only(
              left: width * .01,
              right: width * .01,
              top: height * .02,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: ColorApp.primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: width * .02,
                          right: width * .02,
                          top: height * .013,
                        ),
                        child: Expanded(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    ImageApp.decoRight,
                                    color: ColorApp.blackColor,
                                  ),
                                  Spacer(),
                                  Image.asset(
                                    ImageApp.decoLift,
                                    color: ColorApp.blackColor,
                                  ),
                                ],
                              ),
                              Text(
                                hadethData?.title ?? '',
                                style: TextApp.bold24Black,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Positioned.fill(
                              child: Opacity(
                                opacity: .66,
                                child: Image.asset(
                                  ImageApp.hadethImage,
                                  height: height * .44,
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              padding: EdgeInsets.symmetric(
                                horizontal: width * .04,
                              ),
                              child: Text(
                                hadethData?.content ?? '',
                                textAlign: TextAlign.center,
                                style: TextApp.bold16Black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        ImageApp.decoBottom,
                        color: ColorApp.blackBgColor,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
  }

  void loadHadethFile() async {
    String fileContent = await rootBundle.loadString(
      'assets/file/hadeth/h${widget.index}.txt',
    );
    List<String> hadethLines = fileContent.split('\n');
    String title = fileContent.substring(0, fileContent.indexOf('\n'));
    String content = fileContent.substring(fileContent.indexOf('\n') + 1);
    hadethData = HadethData(title: title, content: content);
    setState(() {});
  }
}
