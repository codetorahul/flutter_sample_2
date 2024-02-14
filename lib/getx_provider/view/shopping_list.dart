import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample_2/getx_provider/controller/cart_controller.dart';
import 'package:flutter_sample_2/getx_provider/controller/shopping_controller.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/instance_manager.dart';

class ShoppingList extends StatelessWidget {
  const ShoppingList({super.key});

  @override
  Widget build(BuildContext context) {
    var shoppingController = Get.put(ShoppingController());
    var cartController = Get.put(CartController());
    return SafeArea(
      child: Container(
        color: Colors.amberAccent.shade100,
        child: Column(
          children: [
            GetX<ShoppingController>(builder: (controller) {
              return Expanded(
                child: ListView.builder(
                  itemCount: controller.productList.length,
                  itemBuilder: (context, index) => Card(
                    margin: EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${controller.productList.elementAt(index).productName}",
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  Text(
                                      "${controller.productList.elementAt(index).productDescription}")
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Rs. ${controller.productList.elementAt(index).price}",
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue),
                                    onPressed: () {
                                      cartController.addToCart(
                                          shoppingController.productList
                                              .elementAt(index));
                                    },
                                    child: Text(
                                      "Add to Cart",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
            GetX<CartController>(builder: (cartController) {
              return Text(
                "Total Amount of items:  ${cartController.total}",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              );
            })
          ],
        ),
      ),
    );
  }
}
