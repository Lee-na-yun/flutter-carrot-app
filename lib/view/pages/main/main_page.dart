import 'package:carrot_market/view/pages/main/chatting/chatting_page.dart';
import 'package:carrot_market/view/pages/main/home/home_page.dart';
import 'package:carrot_market/view/pages/main/my_carrot/my_carrot_page.dart';
import 'package:carrot_market/view/pages/main/near_me/near_me_page.dart';
import 'package:carrot_market/view/pages/main/neighborhood_life/neighborhood_life_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: _buildIndexedStack(),
    );
  }

  IndexedStack _buildIndexedStack() {
    return IndexedStack(
      index: _selectedIndex, // 상태
      children: [
        HomePage(),
        NeighborhoodLifePage(),
        NearMePage(),
        ChattingPage(),
        MyCarrotPage(),
      ],
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (index) {
        setState(() {
          // 현재 index 찾기
          _selectedIndex = index; // 상태바꾸면 화면전환
        });
      },
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.orange,
      items: [
        BottomNavigationBarItem(label: "홈", icon: Icon(CupertinoIcons.home)),
        BottomNavigationBarItem(label: "동네생활", icon: Icon(CupertinoIcons.square_on_square)),
        BottomNavigationBarItem(label: "내근처", icon: Icon(CupertinoIcons.placemark)),
        BottomNavigationBarItem(label: "채팅", icon: Icon(CupertinoIcons.chat_bubble_2)),
        BottomNavigationBarItem(label: "나의 당근", icon: Icon(CupertinoIcons.person)),
      ],
    );
  }
}
