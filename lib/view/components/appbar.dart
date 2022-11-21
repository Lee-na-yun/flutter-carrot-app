import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar BuildAppBar() {
  return AppBar(
    title: Row(
      children: [
        Text("좌동"),
        SizedBox(width: 4.0),
        Icon(
          CupertinoIcons.chevron_down,
          size: 15,
        ),
      ],
    ),
    actions: [
      IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
      IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.list_dash)),
      IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),
    ],
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(1),
      child: Divider(
        thickness: 0.5,
        height: 0.5,
        color: Colors.black12,
      ),
    ),
  );
}
