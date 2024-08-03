 
import 'package:flutter/material.dart';
 
 
import 'package:provider/provider.dart';
import 'package:uscholarcrm/provider/controller.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';

import 'package:uscholarcrm/views/widget/container.dart';
import 'package:uscholarcrm/views/widget/text.dart';

class HomePageCounsiller extends StatelessWidget {
  const HomePageCounsiller({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);
    return Scaffold(
      key: controller.scaffoldKey,
      drawer: drawer(),
      body: Row(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              if (MediaQuery.of(context).size.width > 768) {
                return Container(
                  width: MQ.wd(context) * .180,
                  color: black,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading:const CircleAvatar(),
                          title: AppText(
                            'WAHEED',
                            color: white,
                            size: MQ.wd(context) * .01,
                          ),
                          subtitle:const AppText(
                            'staff',
                            color: white,
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon:const Icon(Icons.more_vert_rounded),
                          ),
                        ),
                        SizedBox(
                          height: MQ.ht(context) * .03,
                        ),
                        // for (int index = 0; index < screen.length; index++)
                        Consumer<Controller>(
                          builder: (context, controller, child) =>
                              ListView.builder(
                            shrinkWrap: true,
                            itemBuilder: (context, index) => ContainerWD(
                              borderradius:
                                  BorderRadius.circular(MQ.wd(context) * .005),
                              colors: controller.selectedindex == index
                                  ? selectedindex
                                  : Colors.black,
                              child: ListTile(
                                leading: icons[index],
                                title: AppText(drawertext[index]),
                                titleTextStyle: const TextStyle(
                                  color: white,
                                ),
                                tileColor: white,
                                iconColor: white,
                                selected: controller.selectedindex == index,
                                // onTap: () {
                                //   Provider.of<Controller>(context,
                                //           listen: false)
                                //       .setSelectedIndex(index);
                                // },
                                onTap: () => controller.setSelectedIndex(index),
                              ),
                            ),
                            itemCount: screen.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return Container();
              }
            },
          ),
          Expanded(
            child: Consumer<Controller>(
              builder: (context, controller, child) =>
                  screen[controller.selectedindex],
            ),
          ),
        ],
      ),
    );
  }
}

Widget drawer() {
  return LayoutBuilder(
    builder: (context, constraints) {
      if (MediaQuery.of(context).size.width < 768) {
        return Container(
          width: MQ.wd(context) * .50,
          color: black,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  leading:const CircleAvatar(),
                  title:const AppText(
                    'WAHEED',
                    color: white,
                  ),
                  subtitle:const AppText(
                    'staff',
                    color: white,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert_rounded),
                  ),
                ),
                SizedBox(
                  height: MQ.ht(context) * .03,
                ),
                for (int index = 0; index < screen.length; index++)
                  Consumer<Controller>(
                    builder: (context, controller, child) => ContainerWD(
                      borderradius:
                          BorderRadius.circular(MQ.wd(context) * .005),
                      colors: controller.selectedindex == index
                          ? selectedindex
                          : Colors.black,
                      child: ListTile(
                        leading: icons[index],
                        title: AppText(drawertext[index]),
                        titleTextStyle:const TextStyle(
                          color: white,
                        ),
                        tileColor: white,
                        iconColor: white,
                        selected: controller.selectedindex == index,
                        onTap: () {
                          Provider.of<Controller>(context, listen: false)
                              .setSelectedIndex(index);
                        },
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      } else {
        return Container();
      }
    },
  );
}
