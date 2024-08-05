 
import 'package:flutter/material.dart';
 
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
 
import 'package:uscholarcrm/views/widget/container.dart';
 
import 'package:uscholarcrm/views/widget/text.dart';
import 'package:uscholarcrm/views/widget/textform.dart';

class ViewLead extends StatelessWidget {
  const ViewLead({super.key});

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
                    icon:const Icon(
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
        ),
        ContainerWD(
          width: MQ.wd(context) * 6,
          height: MQ.ht(context) * .050,
          colors: black,
          child: Row(
            children: [
              SizedBox(width: MQ.wd(context) * .050),
              AppText(
                'Student Name',
                size: MQ.wd(context) * .010,
                color: white,
              ),
              SizedBox(width: MQ.wd(context) * .20),
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
              SizedBox(width: MQ.wd(context) * .120),
              AppText(
                ' Staff Name',
                size: MQ.wd(context) * .010,
                color: white,
              ),
            ],
          ),
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
                child: Padding(
                  padding:const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ContainerWD(
                        child: Row(
                          children: [
                            AppText('${index + 1}'),
                            sizedwd(
                              width: MQ.wd(context) * .008,
                            ),
                            AppText(
                              'Muhammed fayis waheed',
                              weight: FontWeight.bold,
                              size: MQ.wd(context) * .010,
                            ),
                          ],
                        ),
                      ),
                      ContainerWD(
                        width: MQ.wd(context) * .090,
                        child:const Row(
                          children: [
                            Icon(Icons.call),
                            AppText('******506589'),
                          ],
                        ),
                      ),
                     const AppText(' Singapore'),
                      ContainerWD(
                        height: MQ.ht(context) * .03,
                        // width: MQ.wd(context) * .05,
                        padding:const EdgeInsets.all(2),
                        alignment: Alignment.center,
                        colors: blue,
                        borderradius:
                            BorderRadius.circular(MQ.wd(context) * .002),
                        child:const AppText(
                          '  Waheed',
                          color: white,
                        ),
                      ),
                    ],
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
