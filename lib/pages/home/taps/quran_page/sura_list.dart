import 'package:flutter/material.dart';
import 'package:islamy/pages/home/taps/quran_page/sura_resources.dart';
import 'package:islamy/utils/image_app.dart';
import 'package:islamy/utils/route_app.dart';
import '../../../../utils/text_app.dart';

class SuraList extends StatelessWidget {
  const SuraList({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(ImageApp.shape),
          Text("${index + 1}", style: TextApp.bold20White),
        ],
      ),
      title: Text(
        SuraResources.englishQuranSuraList[index],
        style: TextApp.bold20White,
      ),
      subtitle: Text(
        SuraResources.versesNumberSuraList[index],
        style: TextApp.bold14White,
      ),
      trailing: Text(
        SuraResources.arabicQuranSuraList[index],
        style: TextApp.bold20White,
      ),
      onTap: () {
        Navigator.of(
          context,
        ).pushNamed(AppRoute.suraDetailsRoutName, arguments: index);
      },
    );
  }
}
