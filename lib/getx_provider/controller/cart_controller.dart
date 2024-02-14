import 'package:flutter_sample_2/getx_provider/model/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = <Product>{}.obs;
  double get total => cartItems.fold(
      0, (previousValue, element) => previousValue + element.price);

  void addToCart(Product product) async {
    cartItems.add(product);
  }
}
