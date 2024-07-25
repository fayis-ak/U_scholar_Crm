import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/home/pages/dashboard.dart';
import 'package:uscholarcrm/views/widget/divider.dart';
import 'package:uscholarcrm/views/widget/text.dart';
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MQ.wd(context) * .20,
                child: Row(
                  children: [
                    Icon(Icons.arrow_forward_ios_outlined),
                    Icon(Icons.arrow_forward_ios_outlined),
                    AppText(
                      size: MQ.wd(context) * .015,
                      weight: FontWeight.bold,
                      'MAY 19,2022',
                    )
                  ],
                ),
              ),
              Badge(
                label: Text('5'),
                child: Icon(Icons.notifications),
                textColor: notificolor,
                backgroundColor: green,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    MQ.wd(context) * .010,
                  ),
                ),
                width: MQ.wd(context) * .26,
                child: Textformwidget(
                     hint: 'Search here',
                  color: Colors.grey.shade200,
                  suffixicone: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                    ),
                  ),
                  borderradius: MQ.wd(context) * .020,
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.logout),
                    Text('Logout'),
                  ],
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
          child: LeadForm(context),
        ),
        divider(),
      ],
    );
  }
}
