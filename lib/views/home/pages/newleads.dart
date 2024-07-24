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
import 'package:uscholarcrm/views/home/pages/registreadlead.dart';
import 'package:uscholarcrm/views/widget/container.dart';
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
                width: MQ.wd(context) * 
                .26,
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
              SizedBox(width: MQ.wd(context) * .100),
              AppText(
                'Mobile Number',
                size: MQ.wd(context) * .010,
                color: white,
              ),
              SizedBox(width: MQ.wd(context) * .110),
              AppText(
                'Country',
                size: MQ.wd(context) * .010,
                color: white,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 100,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(width: MQ.wd(context) * .020),
                    Container(
                      width: 30,
                      child: Text('${index + 1}'),
                    ),
                    SizedBox(width: MQ.wd(context) * .120),
                    Expanded(child: AppText('Waheed ')),
                    SizedBox(width: MQ.wd(context) * .050),
                    Expanded(child: AppText('*****50435')),
                    SizedBox(width: MQ.wd(context) * .050),
                    Expanded(child: AppText('Kazakhstan')),
                    SizedBox(width: MQ.wd(context) * .150),
                    Consumer<Controller>(
                      builder: (context, controller, child) {
                        return elevatedbt(
                          backgroudcolor: Colors.white,
                          text: 'View',
                          context: context,
                          onpress: () {
                            controller.setSelectedIndex(5);
                          },
                          textcolor: bttextcolor,
                        );
                      },
                    )
                  ],
                ),
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

List<String> name = [
  'Fathima',
  'Waheed ',
  'Muhamemd fayis',
  'Ashraf',
  'Anees',
  'Muhammed Nihal',
  'Shibili',
  'Midlaj',
  'Muhammed Nihal',
  'Muhamemd fayis',
];
