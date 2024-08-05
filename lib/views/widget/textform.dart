import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Textformwidget extends StatelessWidget {
  final double borderradius;
  final Color? fillcolor;
  final Widget? suffixicone;
  final BorderSide? borderSide;
  final String? hint;
  final Color bordersidecolor;
  final Function(String)? onchanged;
  final int? maxlines;
  final AutovalidateMode? autovalidateMode;
  final TextEditingController? controller;
  final TextAlign textalign;
  final int? maxlenght;
  final TextInputType? keyboardtype;
  final double? hintsize;
  final double leftpadding;
  final double toppadding;
  final Color? hintcolor;
  final bool readonly;
  final String? Function(String?)? validator;

  const Textformwidget({
    super.key,
    this.borderradius = 10,
    this.fillcolor,
    this.suffixicone,
    this.borderSide,
    this.hint,
    this.bordersidecolor = Colors.black,
    this.onchanged,
    this.maxlines = 1,
    this.autovalidateMode,
    this.controller,
    this.textalign = TextAlign.start,
    this.maxlenght,
    this.keyboardtype,
    this.hintsize,
    this.leftpadding = 0,
    this.toppadding = 0,
    this.hintcolor,
    this.readonly = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxlenght),
      ],
      keyboardType: keyboardtype,
      textAlign: textalign,
      autovalidateMode: autovalidateMode,
      controller: controller,
      decoration: InputDecoration(
        fillColor: fillcolor,
        filled: true,
        hintText: hint,
        contentPadding: EdgeInsets.only(
          left: leftpadding,
          top: toppadding,
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
      readOnly: readonly,
      validator: validator,
    );
  }
}
