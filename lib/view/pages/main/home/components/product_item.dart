import 'package:cached_network_image/cached_network_image.dart';
import 'package:carrot_market/models/product.dart';
import 'package:carrot_market/view/pages/main/home/components/product_detail.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product; //stl이라서 final 사용
  const ProductItem(this.product, {Key? key}) : super(key: key); //선택적 매개변수가 있을 때 받아야하는 값은 무조건 제일 앞에 적기

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            _buildProductImage(),
            const SizedBox(width: 16),
            ProductDetail(product), // Riverpod을 쓰면 viewModel 데이터를 넘길 필요 없음(=디펜던시 인젝션 하면 됨)
          ],
        ),
      ),
    );
  }

  ClipRRect _buildProductImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: CachedNetworkImage(
        imageUrl: product.urlToImage,
        width: 115,
        height: 115,
        fit: BoxFit.cover,
        progressIndicatorBuilder: (context, url, progress) => CircularProgressIndicator(
          value: progress.progress,
        ),
      ),
    );
  }
}
