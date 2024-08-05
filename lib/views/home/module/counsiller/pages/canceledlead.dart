 
import 'package:flutter/material.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/dashboard.dart';

import 'package:uscholarcrm/views/widget/container.dart';
import 'package:uscholarcrm/views/widget/divider.dart';
import 'package:uscholarcrm/views/widget/text.dart';
import 'package:uscholarcrm/views/widget/textform.dart';

class CanceledLead extends StatelessWidget {
  const CanceledLead({super.key});

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
        sizedwd(
          height: MQ.ht(context) * .030,
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ContainerWD(
                  colors: greyshide,
                  child: ExpansionTile(
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              sizedwd(
                                width: MQ.wd(context) * .050,
                              ),
                              const AppText('Waheed'),
                              sizedwd(
                                width: MQ.wd(context) * .010,
                              ),
                              ContainerWD(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(MQ.wd(context) * .002),
                                height: MQ.ht(context) * .04,
                                colors: red,
                                borderradius: BorderRadius.circular(
                                  MQ.wd(context) * .005,
                                ),
                                child: const AppText(
                                  ' Cancelled',
                                  color: white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: MQ.wd(context) * .020,
                              ),
                              sizedwd(
                                width: MQ.wd(context) * .010,
                              ),
                              const Icon(Icons.call),
                              const AppText('123456789'),
                              sizedwd(
                                width: MQ.wd(context) * .040,
                              ),
                              const Icon(Icons.location_on_outlined),
                              const AppText('Nilabur'),
                              sizedwd(
                                width: MQ.wd(context) * .040,
                              ),
                              const AppText('Create Date : 1/08/2024'),
                              sizedwd(
                                width: MQ.wd(context) * .040,
                              ),
                              sizedwd(
                                width: MQ.wd(context) * .040,
                              ),
                              const AppText('Country : Singapore'),
                              sizedwd(
                                width: MQ.wd(context) * .040,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.edit),
                              ),
                              sizedwd(
                                width: MQ.wd(context) * .010,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.remove_red_eye_outlined),
                              ),
                              sizedwd(
                                width: MQ.wd(context) * .010,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.add_box_rounded),
                              ),
                            ],
                          ),
                          sizedwd(
                            height: MQ.ht(context) * .010,
                          ),
                          Row(
                            children: [
                              sizedwd(
                                width: MQ.wd(context) * .050,
                              ),
                              ContainerWD(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(MQ.wd(context) * .002),
                                height: MQ.ht(context) * .04,
                                colors: red,
                                borderradius: BorderRadius.circular(
                                  MQ.wd(context) * .005,
                                ),
                                child: const AppText(
                                  ' Cancelled',
                                  color: white,
                                ),
                              ),
                              sizedwd(
                                width: MQ.wd(context) * .050,
                              ),
                              const AppText('Lead Source : Directly Entry')
                            ],
                          )
                        ],
                      ),
                    ),
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
        ),
      ],
    );
  }
}
