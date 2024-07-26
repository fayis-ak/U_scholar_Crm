import 'package:flutter/material.dart';

class Controller with ChangeNotifier {
  // side bar screen change
  int selectedindex = 0;
  int _selectedPriority = -1;

  int get selectedPriority => _selectedPriority;

  set selectedPriority(int value) {
    _selectedPriority = value;
    notifyListeners();
  }

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

  bool? isfolowcheck = false;

  void followClick() {
    isfolowcheck = true;
    notifyListeners();
  }

bool? isconform = false;

  void isconformclick() {
    isconform = true;
    notifyListeners();
  }

}
