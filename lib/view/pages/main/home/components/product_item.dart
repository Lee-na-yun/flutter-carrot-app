import 'package:carrot_market/models/product.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product; //stl이라서 final 사용
  const ProductItem(this.product, {Key? key}) : super(key: key); //선택적 매개변수가 있을 때 받아야하는 값은 무조건 제일 앞에 적기

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      child: Row(),
    );
  }
}
