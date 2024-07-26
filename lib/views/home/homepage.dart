import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:uscholarcrm/provider/controller.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/home/pages/addlead.dart';
import 'package:uscholarcrm/views/home/pages/attendence.dart';
import 'package:uscholarcrm/views/home/pages/leadform.dart';
import 'package:uscholarcrm/views/home/pages/canceledlead.dart';
import 'package:uscholarcrm/views/home/pages/dashboard.dart';
import 'package:uscholarcrm/views/home/pages/followpleads.dart';
import 'package:uscholarcrm/views/home/pages/newleads.dart';
import 'package:uscholarcrm/views/home/pages/registreadlead.dart';
import 'package:uscholarcrm/views/home/pages/report.dart';
import 'package:uscholarcrm/views/home/pages/support.dart';
import 'package:uscholarcrm/views/home/pages/tottalleads.dart';
import 'package:uscholarcrm/views/widget/container.dart';
import 'package:uscholarcrm/views/widget/text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> screen = [
      DashBoard(),
      Newleads(),
      FollowupLeads(),
      Registreadlead(),
      TottalLead(),
      LeadsForm(),
      CanceledLead(),
       Attendence(),
      Report(),
      Support(),
     
      AddLead(),
    ];
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.red,
        child: Text('data'),
      ),
      body: Row(
        children: [
          Container(
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
                    ),
                    subtitle: AppText(
                      'staff',
                      color: white,
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        ///////////////////////
                        ///

                        ///////////////////////////////////////////
                      },
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

class UpdateForm extends StatelessWidget {
  const UpdateForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [AppText('Update form')],
    );
  }
}
