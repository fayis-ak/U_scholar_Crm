import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 

class ContainerWD extends StatelessWidget {
  final double? width;
  final double? height;
  final BorderRadiusGeometry? borderradius;
  final Widget? child;
  final Color? colors;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;
  final BoxBorder? border;
  final Function()? onclick;
  final BoxShape boxshape;

  const ContainerWD({
    super.key,
    this.width,
    this.height,
    this.borderradius,
    this.child,
    this.colors,
    this.padding,
    this.alignment,
    this.border,
    this.onclick,
    this.boxshape = BoxShape.rectangle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onclick,
      child: Container(
        alignment: alignment,
        padding: padding,
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: border,
          borderRadius: borderradius,
          color: colors,
          shape: boxshape,
          
        ),
        child: child,
      ),
    );
  }
}
