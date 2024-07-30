import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/single_child_widget.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/home/pages/dashboard.dart';
import 'package:uscholarcrm/views/widget/container.dart';
import 'package:uscholarcrm/views/widget/divider.dart';
import 'package:uscholarcrm/views/widget/text.dart';

import '../../widget/textform.dart';

class Attendence extends StatelessWidget {
  const Attendence({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
            height: MQ.ht(context) * .030,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MQ.wd(context) * .030,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContainerWD(
                  width: MQ.wd(context) * .120,
                  height: MQ.ht(context) * .20,
                  colors: blueshide,
                  borderradius: BorderRadius.circular(MQ.wd(context) * .005),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContainerWD(
                        width: MQ.wd(context) * .050,
                        height: MQ.ht(context) * .10,
                        boxshape: BoxShape.circle,
                        colors: vluemidium,
                        child: Icon(
                          Icons.logout_outlined,
                          color: bluehigh,
                          size: MQ.wd(context) * .023,
                        ),
                      ),
                      sizedwd(
                        height: MQ.ht(context) * .010,
                      ),
                      AppText(
                        '9:30',
                        weight: FontWeight.bold,
                        color: bluehigh,
                        size: MQ.wd(context) * .020,
                      ),
                      AppText('LOG IN'),
                    ],
                  ),
                ),
                ContainerWD(
                  width: MQ.wd(context) * .120,
                  height: MQ.ht(context) * .20,
                  colors: blueshide,
                  borderradius: BorderRadius.circular(MQ.wd(context) * .005),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContainerWD(
                        width: MQ.wd(context) * .050,
                        height: MQ.ht(context) * .10,
                        boxshape: BoxShape.circle,
                        colors: redshide,
                        child: Icon(
                          Icons.access_time,
                          color: greenlight,
                          size: MQ.wd(context) * .023,
                        ),
                      ),
                      sizedwd(
                        height: MQ.ht(context) * .010,
                      ),
                      AppText(
                        'Presnet',
                        weight: FontWeight.bold,
                        color: greenlight,
                        size: MQ.wd(context) * .020,
                      ),
                      AppText(' LOGOUT'),
                    ],
                  ),
                ),
                ContainerWD(
                  width: MQ.wd(context) * .120,
                  height: MQ.ht(context) * .20,
                  colors: blueshide,
                  borderradius: BorderRadius.circular(MQ.wd(context) * .005),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContainerWD(
                        width: MQ.wd(context) * .050,
                        height: MQ.ht(context) * .10,
                        boxshape: BoxShape.circle,
                        colors: redshide,
                        child: Icon(
                          Icons.calendar_month,
                          color: orangelight,
                          size: MQ.wd(context) * .023,
                        ),
                      ),
                      sizedwd(
                        height: MQ.ht(context) * .010,
                      ),
                      AppText(
                        '26 Days',
                        weight: FontWeight.bold,
                        color: orangelight,
                        size: MQ.wd(context) * .020,
                      ),
                      AppText(' WORKING DAYS'),
                    ],
                  ),
                ),
                ContainerWD(
                  width: MQ.wd(context) * .120,
                  height: MQ.ht(context) * .20,
                  colors: blueshide,
                  borderradius: BorderRadius.circular(MQ.wd(context) * .005),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContainerWD(
                        width: MQ.wd(context) * .050,
                        height: MQ.ht(context) * .10,
                        boxshape: BoxShape.circle,
                        colors: redshide,
                        child: Icon(
                          Icons.alarm_off_rounded,
                          color: red,
                          size: MQ.wd(context) * .023,
                        ),
                      ),
                      sizedwd(
                        height: MQ.ht(context) * .010,
                      ),
                      AppText(
                        '4 Leave',
                        weight: FontWeight.bold,
                        color: red,
                        size: MQ.wd(context) * .020,
                      ),
                      AppText('LEAVE'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          sizedwd(
            height: MQ.ht(context) * .020,
          ),
          PaginatedDataTable(
              columnSpacing: MQ.wd(context) * .140,
              columns: [
                DataColumn(label: AppText('DATA')),
                DataColumn(label: AppText('CHECK IN')),
                DataColumn(label: AppText('CHECK OUT')),
                DataColumn(label: AppText('STATUS')),
                DataColumn(label: AppText('ACTUAL TIME')),
              ],
              source: MyDataTableSource())
        ],
      ),
    );
  }
}

class MyDataTableSource extends DataTableSource {
  final List<Map<String, String>> _data = List.generate(1, (index) {
    return {
      "data": "Data $index",
      "checkIn": "Check In $index",
      "checkOut": "Check Out $index",
      "status": "Status $index",
      "actualTime": "Actual Time $index",
    };
  });

  @override
  DataRow getRow(int index) {
    assert(index >= 0);
    // if (index >= _data.length) return null;
    final row = _data[index];
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text(row["data"]!)),
      DataCell(Text(row["checkIn"]!)),
      DataCell(Text(row["checkOut"]!)),
      DataCell(Text(row["status"]!)),
      DataCell(Text(row["actualTime"]!)),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _data.length;

  @override
  int get selectedRowCount => 0;
}
