import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/home/homepage.dart';
import 'package:uscholarcrm/views/widget/divider.dart';
import 'package:uscholarcrm/views/widget/text.dart';
import 'package:uscholarcrm/views/widget/textform.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

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
                      'MAY 19,2022',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MQ.wd(context) * .010,
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
                    AppText('Logout'),
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
          child: LeadForm(context),
        ),
        divider(),
        SizedBox(
          height: MQ.ht(context) * .020,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MQ.wd(context) * .010),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              container(context: context, text: 'NEW LEADS'),
              container(context: context, text: 'FOLLOWUP LEADS'),
              container(context: context, text: 'REGISTER LEADS'),
              container(context: context, text: 'CLOSER LEADS'),
            ],
          ),
        )
      ],
    );
  }
}

Widget container({context, required text}) {
  return Container(
    width: MQ.wd(context) * .18,
    height: MQ.ht(context) * .20,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(MQ.wd(context) * .005),
      color: whiteshide,
    ),
    child: Padding(
      padding: EdgeInsets.all(MQ.wd(context) * .010),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(text),
              Container(
                width: MQ.wd(context) * .010,
                height: MQ.wd(context) * .010,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: black,
                ),
                child: Icon(
                  Icons.question_mark,
                  size: MQ.wd(context) * .010,
                  color: white,
                ),
              )
            ],
          ),
          SizedBox(
            height: MQ.ht(context) * .005,
          ),
          AppText(
            '00',
            color: black,
            size: MQ.wd(context) * 0.020,
          ),
          Spacer(),
          Text(
            'View Details',
            style: AppStyles.Header(
              Color: lightblack,
              double: MQ.wd(context) * 0.010,
              context: context,
              TextDecoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget LeadForm(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Container(
            width: MQ.wd(context) * .050,
            height: MQ.wd(context) * .050,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: black,
            ),
            child: SvgPicture.asset(
              'assets/icons/profile-2user.svg',
              height: 5,
              width: 5,
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(
            width: MQ.wd(context) * .005,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // AppText(
              //   'TOTTAL LEAD',
              //   color: lightblack,
              //   weight: FontWeight.bold,
              //   size: MQ.wd(context) * 0.010,
              // ),
              Text(
                'TOTAL LEAD',
                style: AppStyles.commonTextStyle(context),
              ),

              AppText(
                '0000',
                color: black,
                size: MQ.wd(context) * 0.020,
                weight: FontWeight.bold,
              ),
              // Text(
              //   '0000',
              //   style: AppStyles.Header(
              //     Color: black,
              //     double: MQ.wd(context) * 0.020,
              //     context: context,
              //   ),
              // ),
              Text(
                '16 % This Month',
                style: AppStyles.commonTextStyle(context),
              ),
            ],
          )
        ],
      ),
      Row(
        children: [
          Container(
            width: MQ.wd(context) * .050,
            height: MQ.wd(context) * .050,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: black,
            ),
            child: SvgPicture.asset(
              'assets/icons/profile-tick.svg',
              height: 5,
              width: 5,
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(
            width: MQ.wd(context) * .005,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'REGISTER',
                style: AppStyles.commonTextStyle(context),
              ),
              AppText(
                '0000',
                color: black,
                size: MQ.wd(context) * 0.020,
                weight: FontWeight.bold,
              ),
              Text(
                '16 % This Month',
                style: AppStyles.commonTextStyle(context),
              ),
            ],
          )
        ],
      ),
      Row(
        children: [
          Container(
            width: MQ.wd(context) * .050,
            height: MQ.wd(context) * .050,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: black,
            ),
            child: SvgPicture.asset(
              // 'assets/icons/profile-tick.svg',
              'assets/icons/close.svg',
              height: 5,
              width: 5,
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(
            width: MQ.wd(context) * .005,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'DROPED',
                style: AppStyles.commonTextStyle(context),
              ),
              AppText(
                '0000',
                color: black,
                size: MQ.wd(context) * 0.020,
                weight: FontWeight.bold,
              ),
              Text(
                '16 % This Month',
                style: AppStyles.commonTextStyle(context),
              ),
            ],
          )
        ],
      ),
      Row(
        children: [
          Container(
            width: MQ.wd(context) * .050,
            height: MQ.wd(context) * .050,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: black,
            ),
            child: SvgPicture.asset(
              'assets/icons/profile-2user.svg',
              height: 5,
              width: 5,
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(
            width: MQ.wd(context) * .005,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'FOLLOW UP',
                style: AppStyles.commonTextStyle(context),
              ),
              AppText(
                '0000',
                color: black,
                size: MQ.wd(context) * 0.020,
                weight: FontWeight.bold,
              ),
              Text(
                '16 % This Month',
                style: AppStyles.commonTextStyle(context),
              ),
            ],
          )
        ],
      ),
    ],
  );
}
