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
        Container(
          color: Colors.orange[100],
          child: Center(
            //크기로 전체화면을 잡음
            child: Text(
              "IndexedStack 1",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          color: Colors.redAccent[100],
          child: Center(
            //크기로 전체화면을 잡음
            child: Text(
              "IndexedStack 2",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        )
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
        BottomNavigationBarItem(
          label: "홈",
          icon: Icon(
            CupertinoIcons.home,
          ),
        ),
        BottomNavigationBarItem(
          label: "채팅",
          icon: Icon(
            CupertinoIcons.chat_bubble,
          ),
        ),
      ],
    );
  }
}
