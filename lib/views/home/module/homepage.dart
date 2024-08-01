import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:uscholarcrm/provider/controller.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';

import 'package:uscholarcrm/views/widget/container.dart';
import 'package:uscholarcrm/views/widget/text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                          leading: CircleAvatar(),
                          title: AppText(
                            'WAHEED',
                            color: white,
                            size: MQ.wd(context) * .01,
                          ),
                          subtitle: AppText(
                            'staff',
                            color: white,
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_vert_rounded),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // popup menu button
                            showMenu(
                              color: selectedindex,
                              context: context,
                              position: RelativeRect.fromLTRB(5, 5, 5, 10),
                              items: <PopupMenuEntry>[
                                PopupMenuItem(
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.calendar_month_rounded,
                                              color: white),
                                          Text(
                                            'Calender',
                                            style: TextStyle(color: white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //       builder: (context) =>
                                    //           Hrcalenderpage(),
                                    //     ));
                                  },
                                  value: 'data',
                                ),
                                PopupMenuItem(
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.currency_rupee_sharp,
                                              color: white),
                                          Text(
                                            ' Add Salery',
                                            style: TextStyle(color: white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  value: 'data',
                                  onTap: () {},
                                ),
                                //   PopupMenuItem(
                                //     child: Row(
                                //       children: [
                                //         Row(
                                //           children: [
                                //             Icon(Icons.settings,
                                //                 color: colours.white),
                                //             Text(
                                //               'Settings',
                                //               style: TextStyle(
                                //                   color: colours.white),
                                //             ),
                                //           ],
                                //         ),
                                //       ],
                                //     ),
                                //     value: 'data',
                                //     onTap: () {
                                //       Navigator.push(
                                //           context,
                                //           MaterialPageRoute(
                                //             builder: (context) =>
                                //                 Settings(),
                                //           ));
                                //     },
                                //   ),
                              ],
                            );

                            print('click popup menu');
                          },
                          child: Icon(
                            Icons.grid_view_rounded,
                            color: white,
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
                  leading: CircleAvatar(),
                  title: AppText(
                    'WAHEED',
                    color: white,
                  ),
                  subtitle: AppText(
                    'staff',
                    color: white,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert_rounded),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // popup menu button
                    showMenu(
                      color: selectedindex,
                      context: context,
                      position: RelativeRect.fromLTRB(5, 5, 5, 10),
                      items: <PopupMenuEntry>[
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.calendar_month_rounded,
                                      color: white),
                                  Text(
                                    'Calender',
                                    style: TextStyle(color: white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) =>
                            //           Hrcalenderpage(),
                            //     ));
                          },
                          value: 'data',
                        ),
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.currency_rupee_sharp,
                                      color: white),
                                  Text(
                                    ' Add Salery',
                                    style: TextStyle(color: white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          value: 'data',
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => HrAddSalery(),
                            //     ));
                          },
                        ),
                        //   PopupMenuItem(
                        //     child: Row(
                        //       children: [
                        //         Row(
                        //           children: [
                        //             Icon(Icons.settings,
                        //                 color: colours.white),
                        //             Text(
                        //               'Settings',
                        //               style: TextStyle(
                        //                   color: colours.white),
                        //             ),
                        //           ],
                        //         ),
                        //       ],
                        //     ),
                        //     value: 'data',
                        //     onTap: () {
                        //       Navigator.push(
                        //           context,
                        //           MaterialPageRoute(
                        //             builder: (context) =>
                        //                 Settings(),
                        //           ));
                        //     },
                        //   ),
                      ],
                    );

                    print('click popup menu');
                  },
                  child: Icon(
                    Icons.grid_view_rounded,
                    color: white,
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
                        titleTextStyle: TextStyle(
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
