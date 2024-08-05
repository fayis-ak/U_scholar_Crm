 
import 'package:flutter/material.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/widget/container.dart';
import 'package:uscholarcrm/views/widget/text.dart';
import 'package:uscholarcrm/views/widget/textform.dart';

class DashBoardAddLead extends StatelessWidget {
  const DashBoardAddLead({super.key});

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
          PaginatedDataTable(
            headingRowColor:const MaterialStatePropertyAll(black),
            dataRowHeight: MQ.ht(context) * .090,
            columnSpacing: MQ.wd(context) * .130,
            columns: const [
              DataColumn(
                label: AppText(
                  'DATA',
                  color: white,
                ),
              ),
              DataColumn(label: AppText('Student NAME', color: white)),
              DataColumn(label: AppText('Mobile Number', color: white)),
              DataColumn(label: AppText('Country', color: white)),
              DataColumn(label: AppText('Staff Name', color: white)),
            ],
            source: MyDataTableSource(),
          ),
        ],
      ),
    );
  }
}

class MyDataTableSource extends DataTableSource {
  final List<Map<String, String>> _data = List.generate(1, (index) {
    return {
      "data": "1/08/2024",
      "checkIn": " waheed  ",
      "checkOut": "******5043",
      "status": "Singapore",
      "actualTime": "Actual Time  ",
    };
  });

  @override
  DataRow getRow(int index) {
    assert(index >= 0);
    // if (index >= _data.length) return null;
    final row = _data[index];
    return DataRow.byIndex(index: index, cells: [
      DataCell(AppText(row["data"]!)),
      DataCell(AppText(row["checkIn"]!)),
      DataCell(AppText(row["checkOut"]!)),
      DataCell(AppText(row["status"]!)),
      DataCell(
        ContainerWD(
          // height: MQ.ht(context) * .03,
          // width: MQ.wd(context) * .05,
          padding:const EdgeInsets.all(2),
          alignment: Alignment.center,
          colors: red,
          borderradius: BorderRadius.circular(10),
          child:const AppText(
            'Waheed',
            color: white,
          ),
        ),
      ),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _data.length;

  @override
  int get selectedRowCount => 0;
}
