import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uscholarcrm/utils/reshelper.dart';

const Color white = Color.fromARGB(255, 255, 255, 255);

const Color whitegrey = Color.fromARGB(248, 248, 248, 1);

const Color green = Color.fromARGB(248, 0, 255, 55);

const Color black = Color.fromARGB(255, 0, 0, 0);

const Color notificolor = Color.fromARGB(41, 157, 145, 1);
const Color whiteshide = Color(0xffD9D9D9);

const Color lightblack = Color(0xff706868);

const Color selectedindex = Colors.amber;

List<String> drawertext = [
  'Dashboard',
  'New Leads',
  'Followup Leads',
  'Registered Leads',
  'Total Leads',
  'Adds Leads',
  'Cancelled Leads',
  'Report',
  'Support',
];

List<Icon> icons = [
  Icon(Icons.dashboard),
  Icon(Icons.newspaper),
  Icon(Icons.follow_the_signs),
  Icon(Icons.app_registration_outlined),
  Icon(Icons.dashboard),
  Icon(Icons.dashboard),
  Icon(Icons.dashboard),
  Icon(Icons.dashboard),
  Icon(Icons.dashboard),
];

class AppStyles {
  static TextStyle commonTextStyle(BuildContext context) {
    final double dynamicFontSize = MediaQuery.of(context).size.width * 0.010;

    return TextStyle(
      fontSize: dynamicFontSize,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    );
  }

  static TextStyle Header(
      {context, TextDecoration, required double, required Color}) {
    // final double dynamicFontSize = MediaQuery.of(context).size.width * 0.020;

    return TextStyle(
      decoration: TextDecoration,
      fontSize: double,
      fontWeight: FontWeight.bold,
      color: Color,
    );
  }
}
