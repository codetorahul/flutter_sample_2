import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample_2/getx_provider/view/shopping_list.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class GetxApp extends StatelessWidget {
  const GetxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: Scaffold(
        body: ShoppingList(),
      ),
    );
  }
}
