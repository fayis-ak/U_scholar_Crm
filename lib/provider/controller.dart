import 'package:flutter/material.dart';

class Controller with ChangeNotifier {
  // side bar screen change
  int selectedindex = 0;

  void setSelectedIndex(int index) {
    selectedindex = index;

    notifyListeners();
  }

  // follow lead steper view

  int? selectedIndex;

  void selectItem(int index) {
    if (selectedIndex == index) {
      selectedIndex = null;  
    } else {
      selectedIndex = index;
    }
    notifyListeners();
  }
}
