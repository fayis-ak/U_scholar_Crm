import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:uscholarcrm/provider/controller.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/notification.dart';

import 'package:uscholarcrm/views/widget/divider.dart';
import 'package:uscholarcrm/views/widget/text.dart';
import 'package:uscholarcrm/views/widget/textform.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);
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
              LayoutBuilder(
                builder: (context, constraints) {
                  if (MediaQuery.of(context).size.width < 768) {
                    return IconButton(
                      onPressed: () {
                        controller.scaffoldKey.currentState!.openDrawer();
                      },
                      icon: const Icon(Icons.dehaze),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
              logo(context),
              sizedwd(
                width: MQ.wd(context) * .20,
                child: Row(
                  children: [
                    sizedwd(
                      width: MQ.wd(context) * .010,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: MQ.wd(context) * .02,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: MQ.wd(context) * .02,
                    ),
                    AppText(
                      size: MQ.wd(context) * .015,
                      weight: FontWeight.bold,
                      'MAY 19,2022',
                    )
                  ],
                ),
              ),
              Consumer<Controller>(
                builder: (context, controller, child) {
                  return Badge(
                    label: const Text('5'),
                    textColor: notificolor,
                    backgroundColor: green,
                    child: IconButton(
                      icon: const Icon(Icons.notifications),
                      onPressed: () {
                        controller.isConformclick();
                      },
                    ),
                  );
                },
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    MQ.wd(context) * .010,
                  ),
                ),
                width: MQ.wd(context) * .26,
                child: Textformwidget(
                  hintcolor: black,
                  leftpadding: MQ.wd(context) * .020,
                  hint: 'Search here',
                  fillcolor: Colors.grey.shade200,
                  suffixicone: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                    ),
                  ),
                  borderradius: MQ.wd(context) * .020,
                ),
              ),
              const Row(
                children: [
                  Icon(Icons.logout),
                  AppText('Logout'),
                ],
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
            vertical: MQ.wd(context) * .010,
          ),
          child: leadForm(context),
        ),
        divider(),
        SizedBox(
          height: MQ.ht(context) * .020,
        ),
        if (controller.isclick == false)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MQ.wd(context) * .010),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                container(context: context, text: 'NEW LEADS', index: 1),
                container(context: context, text: 'FOLLOWUP LEADS', index: 2),
                container(context: context, text: 'REGISTER LEADS', index: 3),
                container(context: context, text: 'CLOSER LEADS', index: 4),
              ],
            ),
          ),
        if (controller.isclick == true)
          const Expanded(child: NotificationScreen())
      ],
    );
  }
}

Widget container({context, required text, required index}) {
  return Consumer<Controller>(
    builder: (context, controller, child) {
      return InkWell(
        onTap: () {
          controller.setSelectedIndex(index);
        },
        child: Container(
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
                    AppText(
                      text,
                      weight: FontWeight.bold,
                      size: MQ.wd(context) * .010,
                    ),
                    Container(
                      width: MQ.wd(context) * .010,
                      height: MQ.wd(context) * .010,
                      decoration: const BoxDecoration(
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
                const Spacer(),
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
        ),
      );
    },
  );
}

Widget leadForm(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Container(
            width: MQ.wd(context) * .050,
            height: MQ.wd(context) * .050,
            decoration: const BoxDecoration(
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
                'TOTAL LEAD',
                style: AppStyles.commonTextStyle(context),
              ),
              AppText(
                '01',
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
            decoration: const BoxDecoration(
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
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: black,
            ),
            child: SvgPicture.asset(
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
            decoration: const BoxDecoration(
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
