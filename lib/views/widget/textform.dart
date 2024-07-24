import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';

class Textformwidget extends StatelessWidget {
  final double borderradius;

  final Color? color;
  final Widget? suffixicone;
  final BorderSide? borderSide;
  final String? hint;
  final Color bordersidecolor;

  const Textformwidget({
    super.key,
    this.borderradius = 10,
    this.color,
    this.suffixicone,
    this.borderSide,
    this.hint,
    this.bordersidecolor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: color,
        filled: true,
        hintText: hint,
        contentPadding: EdgeInsets.only(
          left: MQ.wd(context) * .020,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderradius),
          borderSide: borderSide ?? BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderradius),
          borderSide: borderSide ?? BorderSide.none,
        ),
        hintStyle: TextStyle(
          color: black,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            borderradius,
          ),
          borderSide: borderSide ?? BorderSide.none,
        ),
        suffixIcon: suffixicone,
      ),
    );
  }
}
