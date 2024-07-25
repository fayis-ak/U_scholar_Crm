import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:uscholarcrm/provider/controller.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/auth/loggin.dart';
import 'package:uscholarcrm/views/home/homepage.dart';
import 'package:uscholarcrm/views/home/pages/dashboard.dart';
import 'package:uscholarcrm/views/widget/container.dart';
import 'package:uscholarcrm/views/widget/text.dart';
import 'package:uscholarcrm/views/widget/textform.dart';

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
        SizedBox(
          height: MQ.ht(context) * .020,
        ),
        Row(
          children: [
            sizedwd(
              width: MQ.wd(context) * .020,
            ),
            AppText(
              'Followup Leads',
              size: MQ.wd(context) * .015,
              weight: FontWeight.bold,
              style: TextStyle(),
            ),
            sizedwd(
              height: MQ.ht(context) * .020,
            ),
          ],
        ),
        Consumer<Controller>(
          builder: (context, controller, child) {
            return Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ContainerWD(
                      colors: greyshide,
                      borderradius: BorderRadius.circular(
                        MQ.wd(context) * .005,
                      ),
                      child: ExpansionTile(
                        title: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              // controller.selectItem(index);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UpdateForm(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    ContainerWD(
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .08,
                                      child: CircleAvatar(
                                        radius: 50,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        sizedwd(
                                          height: MQ.ht(context) * .030,
                                        ),
                                        Row(
                                          children: [
                                            AppText(
                                              'Waheed',
                                              weight: FontWeight.bold,
                                              size: MQ.wd(context) * .010,
                                            ),
                                            sizedwd(
                                              width: MQ.wd(context) * .010,
                                            ),
                                            ContainerWD(
                                              alignment: Alignment.center,
                                              padding: EdgeInsets.all(
                                                  MQ.wd(context) * .002),
                                              height: MQ.ht(context) * .04,
                                              colors: green,
                                              borderradius:
                                                  BorderRadius.circular(
                                                MQ.wd(context) * .005,
                                              ),
                                              child: AppText(
                                                'Lead priority Normal',
                                                color: white,
                                              ),
                                            ),
                                          ],
                                        ),
                                        sizedwd(
                                          height: MQ.ht(context) * .050,
                                        ),

                                        Row(
                                          children: [
                                            const Icon(Icons.call),
                                            AppText('9497504365'),
                                            VerticalDivider(
                                              color: verticaldivider,
                                              thickness: 1,
                                            ),
                                            Icon(Icons.location_on_outlined),
                                            AppText('Nilabur'),
                                            VerticalDivider(
                                              color: verticaldivider,
                                              thickness: 1,
                                            ),
                                            AppText('Create Date:01/01/2024'),
                                            VerticalDivider(
                                              color: verticaldivider,
                                              thickness: 1,
                                            ),
                                            AppText(' Country :Singapore'),
                                            sizedwd(
                                                width: MQ.wd(context) * .050),
                                            IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.edit),
                                            ),
                                            IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons
                                                  .remove_red_eye_outlined),
                                            )
                                          ],
                                        ),

                                        //
                                        sizedwd(
                                          height: MQ.ht(context) * .030,
                                        ),
                                        Row(
                                          children: [
                                            ContainerWD(
                                              alignment: Alignment.center,
                                              padding: EdgeInsets.all(
                                                  MQ.wd(context) * .002),
                                              height: MQ.ht(context) * .03,
                                              colors: blue,
                                              borderradius:
                                                  BorderRadius.circular(
                                                MQ.wd(context) * .001,
                                              ),
                                              child: AppText(
                                                size: MQ.wd(context) * .008,
                                                'Follow up',
                                                color: white,
                                              ),
                                            ),
                                            sizedwd(
                                              width: MQ.wd(context) * .020,
                                            ),
                                            AppText(
                                                'Lead Source :  Directly Entry'),

                                            // IconButton(
                                            //   onPressed: () {},
                                            //   icon:
                                            //       Icon(Icons.keyboard_arrow_down),
                                            // ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                sizedwd(height: MQ.ht(context) * .020),
                                if (controller.selectedIndex == index)
                                  Stepper(
                                    currentStep: 0,
                                    onStepTapped: (step) {},
                                    onStepContinue: () {},
                                    onStepCancel: () {
                                      controller.selectItem(index);
                                    },
                                    steps: [
                                      Step(
                                        title: Text('Step 1'),
                                        content: Text('Content for Step 1'),
                                      ),
                                      Step(
                                        title: Text('Step 2'),
                                        content: Text('Content for Step 2'),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ),
                        children: [
                          Padding(
                            padding: EdgeInsets.all(
                              MQ.wd(context) * .050,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .05,
                                      child: AppText(Study[0]),
                                      colors: whiteshide,
                                      borderradius: BorderRadius.circular(
                                        MQ.wd(context) * .005,
                                      ),
                                    ),
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .05,
                                      child: AppText(Study[1]),
                                      colors: whiteshide,
                                      borderradius: BorderRadius.circular(
                                        MQ.wd(context) * .005,
                                      ),
                                    ),
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .05,
                                      borderradius: BorderRadius.circular(
                                        MQ.wd(context) * .005,
                                      ),
                                      child: AppText(Study[2]),
                                      colors: whiteshide,
                                    ),
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .05,
                                      borderradius: BorderRadius.circular(
                                        MQ.wd(context) * .005,
                                      ),
                                      child: AppText(Study[3]),
                                      colors: whiteshide,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .05,
                                      child: AppText(
                                        '10%',
                                        size: MQ.wd(context) * .015,
                                      ),
                                    ),
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .05,
                                      child: AppText(
                                        '20%',
                                        size: MQ.wd(context) * .015,
                                      ),
                                    ),
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .05,
                                      child: AppText(
                                        '30%',
                                        size: MQ.wd(context) * .015,
                                      ),
                                    ),
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .05,
                                      child: AppText(
                                        '40%',
                                        size: MQ.wd(context) * .015,
                                      ),
                                    ),
                                  ],
                                ),
                                sizedwd(
                                  height: MQ.ht(context) * .050,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .09,
                                      height: MQ.ht(context) * .05,
                                      borderradius: BorderRadius.circular(
                                        MQ.wd(context) * .005,
                                      ),
                                      child: AppText('Work Experience'),
                                      colors: whiteshide,
                                    ),
                                    sizedwd(
                                      width: MQ.wd(context) * .030,
                                    ),
                                    AppText('1 Year Experience'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    ListTile(
                                      leading: AppText(
                                        '\u2022',
                                        size: MQ.wd(context) * .020,
                                      ),
                                      title: AppText('Plus Two Pass'),
                                    ),
                                    ListTile(
                                      leading: AppText(
                                        '\u2022',
                                        size: MQ.wd(context) * .020,
                                      ),
                                      title: AppText('No '),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return sizedwd(
                    height: MQ.ht(context) * .030,
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
