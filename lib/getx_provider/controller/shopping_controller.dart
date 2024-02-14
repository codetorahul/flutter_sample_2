import 'package:flutter_sample_2/getx_provider/model/product.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  var productList = <Product>{}.obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(const Duration(seconds: 4));

    var listToBeFetched = [
      Product(
          productName: "Angular Course",
          productDescription: "Learn about angular basics",
          price: 20.0),
      Product(
          productName: "Android Course",
          productDescription: "Choose you ways in Android",
          price: 35.0),
      Product(
          productName: "Flutter Course",
          productDescription: "Eye opener Flutter..!!",
          price: 15.0),
      Product(
          productName: "ios Course",
          productDescription: "Tough nuts to crack",
          price: 40.0)
    ];
    productList.addAll(listToBeFetched);
  }
}
