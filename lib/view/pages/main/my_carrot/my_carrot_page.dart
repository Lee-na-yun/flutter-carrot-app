import 'package:cached_network_image/cached_network_image.dart';
import 'package:carrot_market/models/icon_menu.dart';
import 'package:carrot_market/models/neighborhood_life.dart';
import 'package:carrot_market/models/product.dart';
import 'package:carrot_market/theme.dart';
import 'package:carrot_market/view/pages/main/my_carrot/components/my_carrot_icon_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarrotPage extends StatelessWidget {
  const MyCarrotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("나의 당근", style: TextStyle(color: Colors.orange, fontSize: 18)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.gear,
                color: Colors.grey,
              )),
        ],
      ),
      body: ListView(
        children: [
          _buildMyProfile(),
          _buildUpdateBtn(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildIcons("판매내역", FontAwesomeIcons.receipt),
                _buildIcons("구매내역", FontAwesomeIcons.shoppingBag),
                _buildIcons("판매내역", FontAwesomeIcons.heart),
              ],
            ),
          ),
          SizedBox(height: 6),
          MyCarrotIconList(iconMenuList: iconMenu1),
          MyCarrotIconList(iconMenuList: iconMenu2),
          MyCarrotIconList(iconMenuList: iconMenu3),
        ],
      ),
    );
  }

  Widget _buildIcons(String title, IconData iconData) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.orange[100],
            border: Border.all(
              color: Color.fromRGBO(255, 226, 208, 1),
              width: 0.5,
            ),
          ),
          child: Icon(
            iconData,
            color: Colors.orange,
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: textTheme().subtitle1,
        ),
      ],
    );
  }

  Padding _buildUpdateBtn() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: OutlinedButton(
        onPressed: () {},
        child: Text(
          "프로필 수정하기",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 12),
          side: BorderSide(color: Colors.black12),
        ),
      ),
    );
  }

  Padding _buildMyProfile() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(65),
                child: CachedNetworkImage(
                  imageUrl: 'https://placeimg.com/200/100/people',
                  fit: BoxFit.cover,
                  width: 65,
                  height: 65,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Stack(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[100],
                      ),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 16),
          Column(
            children: [
              Text(
                "developer",
                style: textTheme().headline2,
              ),
              SizedBox(height: 10),
              Text("좌동 #00912", style: textTheme().bodyText2),
            ],
          ),
        ],
      ),
    );
  }
}
