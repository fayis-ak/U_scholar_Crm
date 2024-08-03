 
import 'package:flutter/material.dart';
 
import 'package:uscholarcrm/views/widget/text.dart';

class ElevatedbuttonWd extends StatelessWidget {
  final Color btcolor;
  final String? text;
  final Color? textcolor;
  final Color? backgroudcolor;
  final VoidCallback? onpress;
  final double borderradius;
  final double? textsize;
  const ElevatedbuttonWd({
    this.backgroudcolor,
    this.btcolor = Colors.white,
    this.onpress,
    this.text,
    this.textcolor,
    super.key,
    this.borderradius = 0,
    required this.textsize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: btcolor),
        backgroundColor: backgroudcolor,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(
            borderradius,
          ),
        ),
      ),
      onPressed: onpress,
      child: AppText(
        text,
        color: textcolor,
        size: textsize,
        weight: FontWeight.bold,
      ),
    );
  }
}

// Widget elevatedbt({
//   required context,
//   VoidCallback? onpress,
//   required String text,
//   backgroudcolor,
//   textcolor,
// }) {
//   return ElevatedButton(
//     style: ElevatedButton.styleFrom(
//       side: BorderSide(color: btcolor),
//       backgroundColor: backgroudcolor,
//       shape: ContinuousRectangleBorder(
//         borderRadius: BorderRadius.circular(
//           MQ.wd(context) * .005,
//         ),
//       ),
//     ),
//     onPressed: onpress,
//     child: AppText(
//       text,
//       color: textcolor,
//       size: MQ.wd(context) * .015,
//       weight: FontWeight.bold,
//     ),
//   );
// }
