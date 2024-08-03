import 'package:flutter/material.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/registreddetails.dart';

class Controller with ChangeNotifier {
  final GlobalKey<ScaffoldState> scaffoldKey =   GlobalKey<ScaffoldState>();

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

  bool isclick = false;

  void isConformclick() {
    isclick = true;
    notifyListeners();
  }

  void backbutton() {
    isclick = false;
    notifyListeners();
  }

  // navigation rail

  int selectedrailindex = 0;

  // doc add
  List<Widget> docadd = [];

  void addDoc() {
    docadd.add(DocAddWidget(
      docname: 'ff',
      doc: docadd,
    ));
    notifyListeners();
  }

  // document check

  bool? cv = false;
  bool? passport = false;
  bool? passportphoto = false;
  bool? sslc = false;
  bool? plustwo = false;
  bool? digree = false;
  bool? consolidate = false;
  bool? proviional = false;
  bool? transicript = false;
  bool? lor = false;
  bool? moi = false;
  bool? ielts = false;












}
