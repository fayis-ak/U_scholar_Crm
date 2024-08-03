 
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uscholarcrm/provider/controller.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/widget/divider.dart';
import 'package:uscholarcrm/views/widget/text.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  controller.backbutton();
                },
                icon:const Icon(Icons.arrow_back),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MQ.wd(context) * .020,
            ),
            child: ListView.separated(
              shrinkWrap: true,
              physics:const BouncingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                       const Icon(Icons.star_border),
                        sizedwd(
                          width: MQ.wd(context) * .020,
                        ),
                    const    AppText(
                          'waheed',
                          weight: FontWeight.bold,
                        ),
                        sizedwd(
                          width: MQ.wd(context) * .020,
                        ),
                       const AppText(
                          'This Student Document IS Note Fill Please Fill The Form Then Sumbit',
                          color: verticaldivider,
                        ),
                      const  Spacer(),
                     const   AppText(
                          '4 jan',
                          weight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return Column(
                  children: [
                    sizedwd(
                      height: MQ.ht(context) * .030,
                    ),
                    divider(),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
