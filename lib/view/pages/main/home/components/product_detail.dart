import 'package:carrot_market/models/product.dart';
import 'package:carrot_market/theme.dart';
import 'package:carrot_market/util/my_number_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  const ProductDetail(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product.title, style: textTheme().bodyText1),
          SizedBox(height: 4.0),
          Text("${product.address} * ${product.publishedAt}"),
          Text(numberPriceFormat("${product.price}"), style: textTheme().headline2),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildIcons(iconDate: CupertinoIcons.chat_bubble_2, count: product.commentsCount),
              SizedBox(width: 10),
              _buildIcons(iconDate: CupertinoIcons.heart, count: product.heartCount),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildIcons({required IconData iconDate, required int count}) {
    //선택적 매개변수로 받기
    return Visibility(
      visible: count > 0, //조건문
      child: Row(
        children: [
          Icon(iconDate),
          SizedBox(width: 4),
          Text("${count}"),
        ],
      ),
    );
  }
}
