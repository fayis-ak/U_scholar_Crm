import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:uscholarcrm/provider/controller.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> screen = [
      screen1(),
      screen2(),
      screen3(),
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
                    title: Text('WAHEED '),
                    subtitle: Text('Satf'),
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
                          title: Text(drawertext[index]),
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

class screen1 extends StatelessWidget {
  const screen1({super.key});

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
                    Text(
                      'MAY 19,2022',
                      style: TextStyle(
                        fontSize: MQ.wd(context) * .010,
                        fontWeight: FontWeight.bold,
                      ),
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
                width: MQ.wd(context) * .26,
                child: textform(context),
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
            vertical: MQ.wd(context) * .030,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Container(
                    width: MQ.wd(context) * .050,
                    height: MQ.wd(context) * .050,
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
                  SizedBox(
                    width: MQ.wd(context) * .005,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TOTTAL LEAD',
                        style: AppStyles.commonTextStyle(context),
                      ),
                      Text(
                        '0000',
                        style: AppStyles.Header(context),
                      ),
                      Text(
                        '16 % This Month',
                        style: AppStyles.commonTextStyle(context),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MQ.wd(context) * .050,
                    height: MQ.wd(context) * .050,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: black,
                    ),
                    child: SvgPicture.asset(
                      // 'assets/icons/profile-tick.svg',
                      'assets/icons/profile-tick.svg',
                      height: 5,
                      width: 5,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  SizedBox(
                    width: MQ.wd(context) * .005,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('REGISTER'),
                      Text('0000'),
                      Text('16 % This Month'),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MQ.wd(context) * .050,
                    height: MQ.wd(context) * .050,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: black,
                    ),
                    child: SvgPicture.asset(
                      // 'assets/icons/profile-tick.svg',
                      'assets/icons/close.svg',
                      height: 5,
                      width: 5,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  SizedBox(
                    width: MQ.wd(context) * .005,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('DROPED'),
                      Text('0000'),
                      Text('16 % This Month'),
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

Widget textform(context) {
  return TextFormField(
    decoration: InputDecoration(
      fillColor: Colors.grey.shade200,
      filled: true,
      hintText: 'Search here',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          MQ.wd(context) * .005,
        ),
        borderSide: BorderSide.none,
      ),
      suffixIcon: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.search,
        ),
      ),
    ),
  );
}

class screen2 extends StatelessWidget {
  const screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('screen 2'),
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
