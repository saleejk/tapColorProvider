import 'package:flutter/material.dart';

class dropDown extends ChangeNotifier {
  int number = 0;
  List<Color> colorr = [Colors.red, Colors.green, Colors.yellow];

  changeColor() {
    number = (number + 1) % colorr.length;
    notifyListeners();
  }
}
