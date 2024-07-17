import 'package:flutter/material.dart';

class Controller with ChangeNotifier {
  int selectedindex = 0;

  void setSelectedIndex(int index) {
    selectedindex = index;

    notifyListeners();
  }
}
