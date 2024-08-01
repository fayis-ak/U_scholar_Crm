import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/dashboard.dart';
 
import 'package:uscholarcrm/views/widget/container.dart';
import 'package:uscholarcrm/views/widget/divider.dart';
import 'package:uscholarcrm/views/widget/text.dart';

import '../../../../widget/textform.dart';

 

class StudentStatus extends StatelessWidget {
  const StudentStatus({super.key});

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
                    icon: Icon(
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
          child: LeadForm(context),
        ),
        divider(),
        sizedwd(
          height: MQ.ht(context) * .02,
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 20,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  // vertical: MQ.wd(context) * .01,
                  horizontal: MQ.wd(context) * .02,
                ),
                child: ContainerWD(
                  height: MQ.ht(context) * .09,
                  width: MQ.wd(context) * .5,
                  colors: greyshide,
                  borderradius: BorderRadius.circular(MQ.wd(context) * .005),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MQ.wd(context) * .020,
                          height: MQ.wd(context) * .020,
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
                        AppText(
                          'Muhammed fayis ak waheed',
                          weight: FontWeight.bold,
                          size: MQ.wd(context) * .010,
                        ),
                        Row(
                          children: [
                            Icon(Icons.call),
                            AppText('******506589'),
                          ],
                        ),
                        AppText('Country : Singapore'),
                        ContainerWD(
                          height: MQ.ht(context) * .03,
                          // width: MQ.wd(context) * .04,
                          colors: green,
                          borderradius:
                              BorderRadius.circular(MQ.wd(context) * .002),
                          child: AppText(
                            'Visa Processing',
                            color: white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return sizedwd(
                height: MQ.ht(context) * .005,
              );
            },
          ),
        )
      ],
    );
  }
}
