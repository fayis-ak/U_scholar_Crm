import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uscholarcrm/provider/controller.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/dashboard.dart';
import 'package:uscholarcrm/views/widget/container.dart';
import 'package:uscholarcrm/views/widget/divider.dart';
import 'package:uscholarcrm/views/widget/elevatedbutton.dart';
import 'package:uscholarcrm/views/widget/text.dart';
import 'package:uscholarcrm/views/widget/textform.dart';

class NewDocuments extends StatelessWidget {
  NewDocuments({super.key});
  String? selectedstatus;
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);
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
        if (controller.viewclick == false)
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
                        const  DataCell(AppText('******5043')),
                        const  DataCell(AppText('india')),
                          DataCell(
                            Consumer<Controller>(
                              builder: (context, controller, child) {
                                return ElevatedbuttonWd(
                                  backgroudcolor: btcolor,
                                  borderradius: MQ.wd(context) * .008,
                                  text: 'View',
                                  textsize: MQ.wd(context) * .010,
                                  onpress: () {
                                    controller.viewclic();
                                  },
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
        if (controller.viewclick == true)
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ContainerWD(
                      colors: greyshide,
                      borderradius: BorderRadius.circular(
                        MQ.wd(context) * .005,
                      ),
                      child: ExpansionTile(
                        title: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        controller.viewunclik();
                                      },
                                      icon:const Icon(Icons.arrow_back)),
                                ],
                              ),
                              Row(
                                children: [
                                  ContainerWD(
                                    width: MQ.wd(context) * .05,
                                    height: MQ.ht(context) * .08,
                                    child: const CircleAvatar(
                                      radius: 50,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      sizedwd(
                                        height: MQ.ht(context) * .030,
                                      ),
                                      Row(
                                        children: [
                                          AppText(
                                            'Waheed',
                                            weight: FontWeight.bold,
                                            size: MQ.wd(context) * .010,
                                          ),
                                          sizedwd(
                                            width: MQ.wd(context) * .010,
                                          ),
                                          ContainerWD(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.all(
                                                MQ.wd(context) * .002),
                                            height: MQ.ht(context) * .04,
                                            colors: green,
                                            borderradius: BorderRadius.circular(
                                              MQ.wd(context) * .005,
                                            ),
                                            child: const AppText(
                                              'Register',
                                              color: white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      sizedwd(
                                        height: MQ.ht(context) * .050,
                                      ),

                                      const Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(Icons.call),
                                              AppText('9497504365'),
                                              VerticalDivider(
                                                color: verticaldivider,
                                                thickness: 1,
                                              ),
                                              Icon(Icons.location_on_outlined),
                                              AppText('Nilabur'),
                                              VerticalDivider(
                                                color: verticaldivider,
                                                thickness: 1,
                                              ),
                                              AppText('Create Date:01/01/2024'),
                                              VerticalDivider(
                                                color: verticaldivider,
                                                thickness: 1,
                                              ),
                                              AppText(' Country :Singapore'),
                                            ],
                                          ),
                                        ],
                                      ),

                                      //
                                      sizedwd(
                                        height: MQ.ht(context) * .030,
                                      ),
                                      Row(
                                        children: [
                                          ContainerWD(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.all(
                                                MQ.wd(context) * .002),
                                            height: MQ.ht(context) * .03,
                                            colors: blue,
                                            borderradius: BorderRadius.circular(
                                              MQ.wd(context) * .001,
                                            ),
                                            child: AppText(
                                              size: MQ.wd(context) * .008,
                                              'Register',
                                              color: white,
                                            ),
                                          ),
                                          sizedwd(
                                            width: MQ.wd(context) * .020,
                                          ),
                                          const AppText(
                                              'Lead Source :  Directly Entry'),
                                          sizedwd(
                                            width: MQ.wd(context) * .5,
                                          ),
                                          // IconButton(
                                          //   onPressed: () {},
                                          //   icon:
                                          //       Icon(Icons.keyboard_arrow_down),
                                          // ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              sizedwd(height: MQ.ht(context) * .020),
                              Stepper(
                                currentStep: 0,
                                onStepTapped: (step) {},
                                onStepContinue: () {},
                                onStepCancel: () {},
                                steps: const [
                                  Step(
                                    title: Text('Step 1'),
                                    content: Text('Content for Step 1'),
                                  ),
                                  Step(
                                    title: Text('Step 2'),
                                    content: Text('Content for Step 2'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        children: [
                          Padding(
                            padding: EdgeInsets.all(
                              MQ.wd(context) * .040,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .05,
                                      colors: whiteshide,
                                      borderradius: BorderRadius.circular(
                                        MQ.wd(context) * .005,
                                      ),
                                      child: AppText(study[0]),
                                    ),
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .05,
                                      colors: whiteshide,
                                      borderradius: BorderRadius.circular(
                                        MQ.wd(context) * .005,
                                      ),
                                      child: AppText(study[1]),
                                    ),
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .05,
                                      borderradius: BorderRadius.circular(
                                        MQ.wd(context) * .005,
                                      ),
                                      colors: whiteshide,
                                      child: AppText(study[2]),
                                    ),
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .05,
                                      borderradius: BorderRadius.circular(
                                        MQ.wd(context) * .005,
                                      ),
                                      colors: whiteshide,
                                      child: AppText(study[3]),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .05,
                                      child: AppText(
                                        '10%',
                                        size: MQ.wd(context) * .015,
                                      ),
                                    ),
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .05,
                                      child: AppText(
                                        '20%',
                                        size: MQ.wd(context) * .015,
                                      ),
                                    ),
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .05,
                                      child: AppText(
                                        '30%',
                                        size: MQ.wd(context) * .015,
                                      ),
                                    ),
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .05,
                                      height: MQ.ht(context) * .05,
                                      child: AppText(
                                        '40%',
                                        size: MQ.wd(context) * .015,
                                      ),
                                    ),
                                  ],
                                ),
                                sizedwd(
                                  height: MQ.ht(context) * .050,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      width: MQ.wd(context) * .09,
                                      height: MQ.ht(context) * .05,
                                      borderradius: BorderRadius.circular(
                                        MQ.wd(context) * .005,
                                      ),
                                      colors: whiteshide,
                                      child: const AppText('Work Experience'),
                                    ),
                                    sizedwd(
                                      width: MQ.wd(context) * .030,
                                    ),
                                    const AppText('1 Year Experience'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    ListTile(
                                      leading: AppText(
                                        '\u2022',
                                        size: MQ.wd(context) * .020,
                                      ),
                                      title: const AppText('Plus Two Pass'),
                                    ),
                                    ListTile(
                                      leading: AppText(
                                        '\u2022',
                                        size: MQ.wd(context) * .020,
                                      ),
                                      title: const AppText('No '),
                                    ),
                                  ],
                                ),
                                sizedwd(
                                  height: MQ.ht(context) * .030,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    AppText(
                                      'Document Section',
                                      weight: FontWeight.bold,
                                      size: MQ.wd(context) * .010,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          controller.addDoc();
                                        },
                                        icon: const Icon(Icons.add)),
                                    Expanded(
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(children: controller.docadd),
                                      ),
                                    ),
                                  ],
                                ),
                                sizedwd(
                                  height: MQ.ht(context) * .030,
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: controller.isfolowcheck,
                                      onChanged: (value) {},
                                    ),
                                  ],
                                ),
                                sizedwd(
                                  height: MQ.ht(context) * .030,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppText(
                                          'Remark',
                                          color: textgrey,
                                          size: MQ.wd(context) * .010,
                                        ),
                                        sizedwd(
                                          height: MQ.ht(context) * .008,
                                        ),
                                        sizedwd(
                                          width: MQ.wd(context) * .40,
                                          child: Textformwidget(
                                            borderSide: const BorderSide(
                                              color: textgrey,
                                            ),
                                            leftpadding: MQ.wd(context) * .008,
                                            toppadding: MQ.wd(context) * .008,
                                            fillcolor: white,
                                            maxlines: 7,
                                          ),
                                        ),
                                      ],
                                    ),
                                    sizedwd(
                                      width: MQ.wd(context) * .020,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppText(
                                          'Status',
                                          color: textgrey,
                                          size: MQ.wd(context) * .010,
                                        ),
                                        sizedwd(
                                          height: MQ.ht(context) * .008,
                                        ),
                                        sizedwd(
                                          width: MQ.wd(context) * .30,
                                          child: DropdownButtonFormField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: textgrey,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  MQ.wd(context) * .005,
                                                ),
                                              ),
                                            ),
                                            value: selectedstatus,
                                            items: documentstatus
                                                .map(
                                                  (e) => DropdownMenuItem(
                                                    value: e,
                                                    child:
                                                        AppText(e.toString()),
                                                  ),
                                                )
                                                .toList(),
                                            onChanged: (value) {
                                              selectedstatus = value as String;
                                            },
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                sizedwd(
                                  height: MQ.ht(context) * .050,
                                ),
                                Row(
                                  children: [
                                    Consumer<Controller>(
                                      builder: (context, controller, child) {
                                        return Checkbox(
                                          value: controller.isconform,
                                          onChanged: (value) {
                                            controller.isconformclick();
                                          },
                                        );
                                      },
                                    ),
                                    const AppText('Are You Conform This ')
                                  ],
                                ),
                                sizedwd(
                                  height: MQ.ht(context) * .020,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ContainerWD(
                                      alignment: Alignment.center,
                                      onclick: () {},
                                      width: MQ.wd(context) * .180,
                                      height: MQ.ht(context) * .060,
                                      colors: black,
                                      borderradius: BorderRadius.circular(
                                          MQ.wd(context) * .005),
                                      child: AppText(
                                        'SUBMIT',
                                        color: white,
                                        size: MQ.wd(context) * .015,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
      ],
    );
  }
}

class DocAddWidget extends StatelessWidget {
  final List? doc;
  final String? docname;
  const DocAddWidget({
    super.key,
    this.docname,
    required this.doc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MQ.wd(context) * .030),
      child: ContainerWD(
        width: MQ.wd(context) * .20,
        height: MQ.ht(context) * .20,
        colors: greyshide,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    doc!.remove(doc);
                  },
                  icon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                  ),
                )
              ],
            ),
            ContainerWD(
              width: MQ.wd(context) * .025,
              height: MQ.ht(context) * .015,
              child: const Icon(Icons.add),
            ),
            sizedwd(
              height: MQ.ht(context) * .020,
            ),
            AppText(docname),
          ],
        ),
      ),
    );
  }
}
