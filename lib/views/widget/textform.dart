import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';

class Textformwidget extends StatelessWidget {
  final double borderradius;

  final Color? color;
  final Widget? suffixicone;
  final BorderSide? borderSide;
  final String? hint;
  final Color bordersidecolor;
  final Function(String)? onchanged;
  final int? maxlines;
  final AutovalidateMode? autovalidateMode;
  final TextEditingController? controller;
  final TextAlign? textalign;
  final int? maxlenght;
  final TextInputType? keyboardtype;
  final double? hintsize;
  final double leftpadding;
  final Color? hintcolor;
  final bool readonly;

  const Textformwidget({
    super.key,
    this.borderradius = 10,
    this.color,
    this.suffixicone,
    this.borderSide,
    this.hint,
    this.bordersidecolor = Colors.black,
    this.onchanged,
    this.maxlines = 1,
    this.autovalidateMode,
    this.controller,
    this.textalign,
    this.maxlenght,
    this.keyboardtype,
    this.hintsize,
    this.leftpadding = 0,
    this.hintcolor,
    this.readonly = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxlenght),
      ],
      keyboardType: keyboardtype,
      textAlign: TextAlign.start,
      autovalidateMode: autovalidateMode,
      controller: controller,
      decoration: InputDecoration(
        fillColor: color,
        filled: true,
        hintText: hint,
        contentPadding: EdgeInsets.only(
          left: leftpadding,
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
          color: hintcolor,
          fontSize: hintsize,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            borderradius,
          ),
          borderSide: borderSide ?? BorderSide.none,
        ),
        suffixIcon: suffixicone,
      ),
      maxLines: maxlines,
      onChanged: onchanged,
      // initialValue: '10/25/2002',
      readOnly: readonly,
    );
  }
}
