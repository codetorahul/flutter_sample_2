import 'package:flutter/cupertino.dart';

class ProviderModel extends ChangeNotifier {
  int _age = 0;
  String message = "No data";

  int get age => _age;

  set age(int value) {
    _age = value;
    if (value > 18) {
      message = "You are eligible";
    } else {
      message = "Not Eligible";
    }
    notifyListeners();
  }
}
