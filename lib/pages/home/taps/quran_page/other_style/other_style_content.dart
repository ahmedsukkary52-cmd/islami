import 'package:flutter/material.dart';
import '../../../../../utils/text_app.dart';

class OtherStyleContent extends StatefulWidget {
  OtherStyleContent({super.key, required this.content});

  final String content;

  @override
  State<OtherStyleContent> createState() => _OtherStyleContentState();
}

class _OtherStyleContentState extends State<OtherStyleContent> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * .60,
      child: Text(
        widget.content,
        style: TextApp.bold20Primary,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
