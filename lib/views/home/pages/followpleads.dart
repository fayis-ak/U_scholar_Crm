import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/auth/loggin.dart';
import 'package:uscholarcrm/views/home/homepage.dart';
import 'package:uscholarcrm/views/home/pages/dashboard.dart';

class FollowupLeads extends StatelessWidget {
  const FollowupLeads({super.key});

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
                child: textform(context),
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
              vertical: MQ.wd(context) * .030,
            ),
            child: LeadForm(context)),
        SizedBox(
          height: MQ.ht(context) * .020,
        ),
      ],
    );
  }
}
