import 'package:flutter/material.dart';
import '../../../../utils/color_app.dart';
import '../../../../utils/icon_app.dart';
import '../../../../utils/image_app.dart';
import '../../../../utils/text_app.dart';

class RadioList extends StatelessWidget {
  RadioList({
    super.key,
    required this.text,
    required this.onTap,
    required this.onTap2,
    this.isPushed = false,
    this.isMute = false,
  });

  String text;
  bool isPushed = false;
  bool isMute = false;
  Function() onTap;
  Function() onTap2;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(top: height * .015, bottom: height * .004),
            width: double.infinity,
            height: height * .14,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ColorApp.primaryColor,
              image: DecorationImage(
                alignment: Alignment.bottomCenter,
                image: AssetImage(
                  isPushed ? ImageApp.soundWaveRadio : ImageApp.decoRadio,
                ),
                fit: BoxFit.contain,
              ),
            ),
            child: Column(
              children: [
                Text(text, style: TextApp.bold20Black),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: width * .11),
                    IconButton(
                      padding: EdgeInsetsGeometry.zero,
                      onPressed: onTap,
                      icon: isPushed
                          ? Icon(
                              Icons.pause_rounded,
                              size: width * .15,
                              color: ColorApp.blackColor,
                            )
                          : Icon(
                              Icons.play_arrow_rounded,
                              size: width * .15,
                              color: ColorApp.blackColor,
                            ),
                    ),
                    IconButton(
                      onPressed: onTap2,
                      icon: isMute
                          ? ImageIcon(
                              AssetImage(IconApp.mute),
                              size: width * .07,
                              color: ColorApp.blackColor,
                            )
                          : ImageIcon(
                              AssetImage(IconApp.volume),
                              size: width * .07,
                              color: ColorApp.blackColor,
                            ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
