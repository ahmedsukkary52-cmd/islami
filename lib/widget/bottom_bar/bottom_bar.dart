import 'package:flutter/material.dart';
import '../../utils/color_app.dart';
import 'bottom_bar_item_data.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
    required this.items,
    required this.currentTap,
    required this.onTap,
  });

  final List<BottomBarDataItem> items;
  final int currentTap;

  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentTap,
      onTap: onTap,

      backgroundColor: ColorApp.primaryColor,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      selectedItemColor: ColorApp.whiteColor,
      unselectedItemColor: ColorApp.blackColor,

      items: List.generate(items.length, (index) {
        final item = items[index];
        return BottomNavigationBarItem(
          icon: buildBottomNavTap(
            index: index,
            imageName: item.imageIcon,
            context: context,
          ),
          label: item.label,
        );
      }),
    );
  }

  Widget buildBottomNavTap({
    required int index,
    required String imageName,
    required BuildContext context,
  }) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return currentTap == index
        ? Container(
            padding: EdgeInsets.symmetric(
              horizontal: width * .05,
              vertical: height * .006,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(66),
              color: ColorApp.blackBgColor,
            ),
            child: ImageIcon(AssetImage(imageName)),
          )
        : ImageIcon(AssetImage(imageName));
  }
}
