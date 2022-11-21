import 'package:carrot_market/models/product.dart';
import 'package:carrot_market/view/components/appbar.dart';
import 'package:carrot_market/view/pages/main/home/components/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: ListView.separated(
        //구분선 그을 때 사용
        itemCount: productList.length,
        itemBuilder: (context, index) => ProductItem(productList[index]), //model의 product객체를 리턴함(몇번지인지)
        separatorBuilder: (context, index) => Divider(
          height: 0,
          indent: 16,
          endIndent: 16,
          color: Colors.grey,
        ), //구분선 그리는 방법
      ),
    );
  }
}
