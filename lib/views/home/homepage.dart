import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:uscholarcrm/provider/controller.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/home/pages/dashboard.dart';
import 'package:uscholarcrm/views/home/pages/followpleads.dart';
import 'package:uscholarcrm/views/home/pages/newleads.dart';
import 'package:uscholarcrm/views/widget/text.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> screen = [
      Screen1(),
      Newleads(),
      FollowupLeads(),
      screen4(),
      screen5(),
      screen6(),
      screen7(),
      screen8(),
      screen9(),
    ];
    return Scaffold(
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
                    // title: Text(
                    //   'WAHEED ',
                    //   style: AppStyles.Header(
                    //       double: MQ.wd(context) * .010, Color: white),
                    // ),
                    subtitle: AppText(
                      'staff',
                      color: white,
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert_rounded),
                    ),
                  ),
                  SizedBox(
                    height: MQ.ht(context) * .03,
                  ),
                  // ListTile(
                  //   leading: Icon(Icons.dashboard),
                  //   title: Text('DASHBOARD'),
                  //   onTap: () {
                  //     Provider.of<Controller>(context, listen: false)
                  //         .setSelectedIndex(0);
                  //   },
                  // ),
                  // ListTile(
                  //   selectedColor: Colors.red,
                  //   leading: Icon(Icons.dashboard),
                  //   title: Text('DASHBOARD'),
                  //   onTap: () {
                  //     Provider.of<Controller>(context, listen: false)
                  //         .setSelectedIndex(1);
                  //   },
                  // ),
                  for (int index = 0; index < screen.length; index++)
                    Consumer<Controller>(
                      builder: (context, controller, child) => Container(
                        color: controller.selectedindex == index
                            ? selectedindex
                            : Colors.black,
                        child: ListTile(
                          leading: icons[index],
                          title: AppText(drawertext[index]),
                          //  Text(drawertext[index]),
                          titleTextStyle: TextStyle(
                            color: white,
                          ),
                          tileColor: white,
                          iconColor: white,
                          selected: controller.selectedindex == index,
                          // selectedTileColor: Colors.red,
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



class screen3 extends StatelessWidget {
  const screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('screen 3'),
      ),
    );
  }
}

class screen4 extends StatelessWidget {
  const screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('screen 4'),
      ),
    );
  }
}

class screen5 extends StatelessWidget {
  const screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('screen 5'),
      ),
    );
  }
}

class screen6 extends StatelessWidget {
  const screen6({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('screen 6'),
      ),
    );
  }
}

class screen7 extends StatelessWidget {
  const screen7({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('screen 7'),
      ),
    );
  }
}

class screen8 extends StatelessWidget {
  const screen8({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('screen 8'),
      ),
    );
  }
}

class screen9 extends StatelessWidget {
  const screen9({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('screen 9'),
      ),
    );
  }
}
