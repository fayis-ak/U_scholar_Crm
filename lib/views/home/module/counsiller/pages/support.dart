 
import 'package:flutter/material.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/dashboard.dart';
 
import 'package:uscholarcrm/views/widget/container.dart';
import 'package:uscholarcrm/views/widget/divider.dart';
 
import 'package:uscholarcrm/views/widget/textform.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MQ.wd(context) * .030,
            vertical: MQ.wd(context) * .030,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              logo(context),
              ContainerWD(
                borderradius: BorderRadius.circular(
                  MQ.wd(context) * .010,
                ),
                width: MQ.wd(context) * .20,
                height: MQ.ht(context) * .05,
                child: Textformwidget(
                  hintcolor: black,
                  leftpadding: MQ.wd(context) * .020,
                  hint: 'Search here',
                  color: Colors.grey.shade200,
                  suffixicone: IconButton(
                    onPressed: () {},
                    icon:const Icon(
                      Icons.search,
                    ),
                  ),
                  borderradius: MQ.wd(context) * .020,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MQ.ht(context) * .020,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MQ.wd(context) * .030,
            vertical: MQ.wd(context) * .010,
          ),
          child: leadForm(context),
        ),
        divider(),
      ],
    );
  }
}
