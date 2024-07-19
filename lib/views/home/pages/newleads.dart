import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/auth/loggin.dart';
import 'package:uscholarcrm/views/home/homepage.dart';
import 'package:uscholarcrm/views/home/pages/dashboard.dart';
import 'package:uscholarcrm/views/widget/text.dart';
import 'package:uscholarcrm/views/widget/textform.dart';

class Newleads extends StatelessWidget {
  const Newleads({super.key});

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
                    Text(
                      'MAY 19,2022',
                      style: TextStyle(
                        fontSize: MQ.wd(context) * .010,
                        fontWeight: FontWeight.bold,
                      ),
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
                child: Textformwidget(),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.logout),
                    Text('Logout'),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: MQ.ht(context) * .020,
        ),
        Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MQ.wd(context) * .030,
              vertical: MQ.wd(context) * .030,
            ),
            child: LeadForm(context)),
        SizedBox(
          height: MQ.ht(context) * .020,
        ),
        Container(
          width: MQ.wd(context) * 6,
          height: MQ.ht(context) * .050,
          color: black,
          child: Row(
            children: [
              SizedBox(width: MQ.wd(context) * .15),
              AppText(
                'Student Name',
                size: MQ.wd(context) * .010,
                color: white,
              ),
              // Text(
              //   'Student Name',
              //   style: AppStyles.Header(
              //     double: MQ.wd(context) * .010,
              //     Color: white,
              //   ),
              // ),
              SizedBox(width: MQ.wd(context) * .100),
              Text(
                'Mobile Number',
                style: AppStyles.Header(
                  double: MQ.wd(context) * .010,
                  Color: white,
                ),
              ),
              SizedBox(width: MQ.wd(context) * .110),
              Text(
                'Coundry',
                style: AppStyles.Header(
                  double: MQ.wd(context) * .010,
                  Color: white,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  SizedBox(width: MQ.wd(context) * .020),
                  Text('${index + 1}'),
                  SizedBox(width: MQ.wd(context) * .120),
                  AppText('Waheed'),
                  SizedBox(width: MQ.wd(context) * .120),
                  AppText('*****50435'),
                  SizedBox(width: MQ.wd(context) * .120),
                  AppText('UK,US,CANADA'),
                  SizedBox(width: MQ.wd(context) * .150),
                  elevatedbt(
                    backgroudcolor: Colors.white,
                    text: 'View',
                    context: context,
                    onpress: () {},
                    textcolor: bttextcolor,
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: MQ.ht(context) * .050,
              );
            },
          ),
        ),
      ],
    );
  }
}
