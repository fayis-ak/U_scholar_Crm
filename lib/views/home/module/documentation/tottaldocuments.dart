 
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uscholarcrm/provider/controller.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/dashboard.dart';
import 'package:uscholarcrm/views/widget/container.dart';
import 'package:uscholarcrm/views/widget/elevatedbutton.dart';
import 'package:uscholarcrm/views/widget/text.dart';
import 'package:uscholarcrm/views/widget/textform.dart';

class TottalDocuments extends StatelessWidget {
  const TottalDocuments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MQ.wd(context) * .030,
            vertical: MQ.wd(context) * .020,
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
                    icon: const Icon(
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
          height: MQ.ht(context) * .050,
        ),
        Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MQ.wd(context) * .030,
              vertical: MQ.wd(context) * .010,
            ),
            child: leadForm(context)),
        SizedBox(
          height: MQ.ht(context) * .050,
        ),
        // ContainerWD(
        //   width: MQ.wd(context) * 6,
        //   height: MQ.ht(context) * .050,
        //   colors: black,
        //   child: Row(
        //     children: [
        //       SizedBox(width: MQ.wd(context) * .15),
        //       AppText(
        //         'Student Name',
        //         size: MQ.wd(context) * .010,
        //         color: white,
        //       ),
        //       SizedBox(width: MQ.wd(context) * .100),
        //       AppText(
        //         'Mobile Number',
        //         size: MQ.wd(context) * .010,
        //         color: white,
        //       ),
        //       SizedBox(width: MQ.wd(context) * .110),
        //       AppText(
        //         'Country',
        //         size: MQ.wd(context) * .010,
        //         color: white,
        //       ),
        //     ],
        //   ),
        // ),
        Expanded(
          child: sizedwd(
            width: double.infinity,
            child: SingleChildScrollView(
              child: DataTable(
                  headingRowColor:const MaterialStatePropertyAll(black),
                  columnSpacing: MQ.wd(context) * .080,
                  columns: const [
                    DataColumn(
                        label: AppText(
                      ' ',
                      color: white,
                    )),
                    DataColumn(
                        label: AppText(
                      'Student Name',
                      color: white,
                    )),
                    DataColumn(
                        label: AppText(
                      'Mobile Number',
                      color: white,
                    )),
                    DataColumn(
                        label: AppText(
                      'Country',
                      color: white,
                    )),
                    DataColumn(
                        label: AppText(
                      ' ',
                      color: white,
                    )),
                  ],
                  rows: List.generate(
                    10,
                    (index) => DataRow(
                      color: MaterialStateProperty.all(white),
                      cells: [
                        DataCell(AppText('${index + 1}')),
                        const DataCell(AppText('waheed')),
                        const DataCell(AppText('******5043')),
                        const DataCell(AppText('india')),
                        DataCell(
                          Consumer<Controller>(
                            builder: (context, controller, child) {
                              return ElevatedbuttonWd(
                                backgroudcolor: btcolor,
                                borderradius: MQ.wd(context) * .008,
                                text: 'View',
                                textsize: MQ.wd(context) * .010,
                                onpress: () {},
                                textcolor: greenmedium,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
