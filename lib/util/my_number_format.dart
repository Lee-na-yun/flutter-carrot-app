import 'package:intl/intl.dart';

String numberPriceFormat(String price) {
  final formatter = NumberFormat("#,###원"); // INTL 라이브러리
  return formatter.format(int.parse(price)); // 문자열을 숫자로 변경하는 함수
}
