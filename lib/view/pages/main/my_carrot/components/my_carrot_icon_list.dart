import 'package:carrot_market/models/icon_menu.dart';
import 'package:carrot_market/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarrotIconList extends StatelessWidget {
  final List<IconMenu> iconMenuList;
  MyCarrotIconList({required this.iconMenuList, Key? key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: Border(top: BorderSide(color: Colors.black12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            iconMenuList.length,
            (index) => _buildIconContain(
              iconMenuList[index].title,
              iconMenuList[index].iconData,
            ),
          ),
        ),
      ),
    );
  }

  Padding _buildIconContain(String title, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Icon(iconData, size: 17),
          SizedBox(width: 16),
          Text(title, style: textTheme().subtitle1),
        ],
      ),
    );
  }
}
