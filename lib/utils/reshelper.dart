import 'package:flutter/material.dart';

class MQ {
  static double wd(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double ht(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
