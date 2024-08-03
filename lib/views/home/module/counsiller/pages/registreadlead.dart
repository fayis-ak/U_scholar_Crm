import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uscholarcrm/provider/controller.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/dashboard.dart';

import 'package:uscholarcrm/views/widget/container.dart';
import 'package:uscholarcrm/views/widget/divider.dart';
import 'package:uscholarcrm/views/widget/text.dart';
import 'package:uscholarcrm/views/widget/textform.dart';

class Registreadlead extends StatelessWidget {
  const Registreadlead({super.key});

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
                    icon: const Icon(
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
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  ContainerWD(
                                    width: MQ.wd(context) * .05,
                                    height: MQ.ht(context) * .08,
                                    child: const CircleAvatar(
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
                                            borderradius: BorderRadius.circular(
                                              MQ.wd(context) * .005,
                                            ),
                                            child: const AppText(
                                              'Register',
                                              color: white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      sizedwd(
                                        height: MQ.ht(context) * .050,
                                      ),

                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Icon(Icons.call),
                                              const AppText('9497504365'),
                                              const VerticalDivider(
                                                color: verticaldivider,
                                                thickness: 1,
                                              ),
                                              const Icon(
                                                  Icons.location_on_outlined),
                                              const AppText('Nilabur'),
                                              const VerticalDivider(
                                                color: verticaldivider,
                                                thickness: 1,
                                              ),
                                              const AppText(
                                                  'Create Date:01/01/2024'),
                                              const VerticalDivider(
                                                color: verticaldivider,
                                                thickness: 1,
                                              ),
                                              const AppText(
                                                  ' Country :Singapore'),
                                              const sizedwd(width: 80),
                                              IconButton(
                                                onPressed: () {},
                                                icon: const Icon(Icons.edit),
                                              ),
                                              Consumer<Controller>(
                                                builder: (context, controller,
                                                    child) {
                                                  return IconButton(
                                                    onPressed: () {
                                                      controller
                                                          .isConformclick();
                                                    },
                                                    icon: const Icon(Icons
                                                        .remove_red_eye_outlined),
                                                  );
                                                },
                                              )
                                            ],
                                          ),
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
                                            borderradius: BorderRadius.circular(
                                              MQ.wd(context) * .001,
                                            ),
                                            child: AppText(
                                              size: MQ.wd(context) * .008,
                                              'Register',
                                              color: white,
                                            ),
                                          ),
                                          sizedwd(
                                            width: MQ.wd(context) * .020,
                                          ),
                                          const AppText(
                                              'Lead Source :  Directly Entry'),
                                          sizedwd(
                                            width: MQ.wd(context) * .5,
                                          ),
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
                                  steps: const [
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
                                     
                                      colors: whiteshide,
                                      borderradius: BorderRadius.circular(
                                        MQ.wd(context) * .005,
                                      ),
                                       child: AppText(study[0]),
                                    ),
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .05,
                          
                                      colors: whiteshide,
                                      borderradius: BorderRadius.circular(
                                        MQ.wd(context) * .005,
                                      ),
                                                  child: AppText(study[1]),
                                    ),
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .05,
                                      borderradius: BorderRadius.circular(
                                        MQ.wd(context) * .005,
                                      ),
                               
                                      colors: whiteshide,
                                             child: AppText(study[2]),
                                    ),
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .05,
                                      borderradius: BorderRadius.circular(
                                        MQ.wd(context) * .005,
                                      ),
                                      colors: whiteshide,
                                      child: AppText(study[3]),
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
                                 
                                      colors: whiteshide,
                                           child:const AppText('Work Experience'),
                                    ),
                                    sizedwd(
                                      width: MQ.wd(context) * .030,
                                    ),
                                    const AppText('1 Year Experience'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    ListTile(
                                      leading: AppText(
                                        '\u2022',
                                        size: MQ.wd(context) * .020,
                                      ),
                                      title: const AppText('Plus Two Pass'),
                                    ),
                                    ListTile(
                                      leading: AppText(
                                        '\u2022',
                                        size: MQ.wd(context) * .020,
                                      ),
                                      title: const AppText('No '),
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
