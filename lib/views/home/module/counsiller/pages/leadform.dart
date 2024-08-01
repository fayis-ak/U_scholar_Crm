import 'dart:developer';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:uscholarcrm/provider/controller.dart';

import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/dashboard.dart';
 
import 'package:uscholarcrm/views/widget/container.dart';
import 'package:uscholarcrm/views/widget/divider.dart';
import 'package:uscholarcrm/views/widget/text.dart';
import 'package:uscholarcrm/views/widget/textform.dart';
 

class LeadsForm extends StatefulWidget {
  const LeadsForm({super.key});

  @override
  State<LeadsForm> createState() => _LeadsFormState();
}

class _LeadsFormState extends State<LeadsForm> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();

    TextEditingController notesController = TextEditingController();
    bool newLine = false;
    @override
    void initState() {
      //notesController.text = widget.healthEvent['text'];
      notesController.addListener(() {
        print('___${notesController.text}');
        String note = notesController.text;
        if (note.isNotEmpty && note.substring(note.length - 1) == '\u2022') {
          print('newline');
          // setState(() {
          //   newLine = true;
          // });
        } else {
          // setState(() {
          //   newLine = false;
          // });
        }
      });
      super.initState();
    }

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
            padding: const EdgeInsets.all(8.0),
            child: ContainerWD(
              width: double.infinity,
              // height: MQ.ht(context) * .5,
              colors: greyshide,
              borderradius: BorderRadius.circular(MQ.wd(context) * .005),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MQ.wd(context) * .020,
                  vertical: MQ.wd(context) * .010,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        AppText(
                          'Lead Form',
                          size: MQ.wd(context) * .020,
                          weight: FontWeight.bold,
                        ),
                      ],
                    ),
                    sizedwd(height: MQ.ht(context) * .030),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  'Student Name ',
                                  color: textgrey,
                                  size: MQ.wd(context) * .012,
                                ),
                                sizedwd(height: MQ.ht(context) * .010),
                                Textformwidget(
                                  hintcolor: black,
                                  leftpadding: MQ.wd(context) * .020,
                                  color: white,
                                  borderSide: BorderSide(
                                    color: textgrey,
                                  ),
                                ),

                                sizedwd(height: MQ.ht(context) * .030),
                                AppText(
                                  'Country',
                                  color: textgrey,
                                  size: MQ.wd(context) * .012,
                                ),
                                sizedwd(height: MQ.ht(context) * .010),

                                ContainerWD(
                                  height: MQ.ht(context) * .06,
                                  colors: white,
                                  border: Border.all(
                                    color: textgrey,
                                  ),
                                  borderradius: BorderRadius.circular(10),
                                  width: MQ.wd(context) * .5,
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton2<String>(
                                      isExpanded: true,
                                      hint: Text(
                                        selectedValue ?? 'Select Country',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Theme.of(context).hintColor,
                                        ),
                                      ),
                                      items: country
                                          .toSet()
                                          .map((item) => DropdownMenuItem(
                                                    value: item,
                                                child: Text(
                                                  item,
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ))
                                          .toList(),
                                      value: country.contains(selectedValue)
                                          ? selectedValue
                                          : null,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedValue = value;

                                          log(selectedValue.toString());
                                        });
                                      },
                                      buttonStyleData: const ButtonStyleData(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 16,
                                        ),
                                        height: 40,
                                        width: 200,
                                      ),
                                      dropdownStyleData:
                                          const DropdownStyleData(
                                        maxHeight: 200,
                                      ),
                                      menuItemStyleData:
                                          const MenuItemStyleData(
                                        height: 40,
                                      ),
                                      dropdownSearchData: DropdownSearchData(
                                        searchController: textEditingController,
                                        searchInnerWidgetHeight: 50,
                                        searchInnerWidget: Container(
                                          height: 50,
                                          padding: const EdgeInsets.only(
                                            top: 8,
                                            bottom: 4,
                                            right: 8,
                                            left: 8,
                                          ),
                                          child: TextFormField(
                                            expands: true,
                                            maxLines: null,
                                            controller: textEditingController,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 10,
                                                vertical: 8,
                                              ),
                                              hintText: 'Search Country...',
                                              hintStyle:
                                                  const TextStyle(fontSize: 12),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                          ),
                                        ),
                                        searchMatchFn: (item, searchValue) {
                                          return item.value
                                              .toString()
                                              .contains(searchValue);
                                        },
                                      ),
                                      onMenuStateChange: (isOpen) {
                                        if (!isOpen) {
                                          textEditingController.clear();
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                sizedwd(height: MQ.ht(context) * .030),
                                AppText(
                                  'Cost ',
                                  color: textgrey,
                                  size: MQ.wd(context) * .012,
                                ),
                                sizedwd(height: MQ.ht(context) * .010),
                                Textformwidget(
                                  hintcolor: black,
                                  leftpadding: MQ.wd(context) * .020,
                                  color: white,
                                  borderSide: BorderSide(
                                    color: textgrey,
                                  ),
                                ),

                                sizedwd(height: MQ.ht(context) * .030),
                                //

                                AppText(
                                  'Address ',
                                  color: textgrey,
                                  size: MQ.wd(context) * .012,
                                ),
                                sizedwd(height: MQ.ht(context) * .010),
                                Textformwidget(
                                  hintcolor: black,
                                  leftpadding: MQ.wd(context) * .020,
                                  color: white,
                                  borderSide: BorderSide(
                                    color: textgrey,
                                  ),
                                ),

                                sizedwd(height: MQ.ht(context) * .050),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: MQ.wd(context) * .060,
                                      child: Textformwidget(
                                        hintcolor: black,
                                        maxlenght: 3,
                                        leftpadding: MQ.wd(context) * .010,
                                        color: white,
                                        borderSide: BorderSide(color: textgrey),
                                        hint: '10th',
                                        suffixicone: Icon(
                                          Icons.percent,
                                          size: MQ.wd(context) * .010,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MQ.wd(context) * .060,
                                      child: Textformwidget(
                                        hintcolor: black,
                                        maxlenght: 3,
                                        leftpadding: MQ.wd(context) * .010,
                                        color: white,
                                        borderSide: BorderSide(color: textgrey),
                                        hint: '12th',
                                        suffixicone: Icon(
                                          Icons.percent,
                                          size: MQ.wd(context) * .010,
                                        ),
                                      ),
                                    ),
                                    sizedwd(width: MQ.wd(context) * .005),
                                    SizedBox(
                                      width: MQ.wd(context) * .060,
                                      child: Textformwidget(
                                        hintcolor: black,
                                        maxlenght: 3,
                                        leftpadding: MQ.wd(context) * .010,
                                        color: white,
                                        borderSide: BorderSide(color: textgrey),
                                        hint: 'Degree',
                                        hintsize: MQ.wd(context) * .008,
                                        suffixicone: Icon(
                                          Icons.percent,
                                          size: MQ.wd(context) * .010,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MQ.wd(context) * .060,
                                      child: Textformwidget(
                                        hintcolor: black,
                                        maxlenght: 3,
                                        leftpadding: MQ.wd(context) * .010,
                                        color: white,
                                        borderSide: BorderSide(color: textgrey),
                                        hint: 'Pg',
                                        suffixicone: Icon(
                                          Icons.percent,
                                          size: MQ.wd(context) * .010,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MQ.wd(context) * .060,
                                      child: Textformwidget(
                                        hintcolor: black,
                                        maxlenght: 3,
                                        leftpadding: MQ.wd(context) * .010,
                                        color: white,
                                        borderSide: BorderSide(color: textgrey),
                                        hint: 'ielts',
                                        suffixicone: Icon(
                                          Icons.percent,
                                          size: MQ.wd(context) * .010,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        sizedwd(width: 50),

                        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                'Mobile Number ',
                                color: textgrey,
                                size: MQ.wd(context) * .012,
                              ),
                              sizedwd(height: MQ.ht(context) * .010),
                              Textformwidget(
                                hintcolor: textgrey,
                                leftpadding: MQ.wd(context) * .020,
                                maxlenght: 10,
                                keyboardtype: TextInputType.number,
                                borderSide: BorderSide(
                                  color: textgrey,
                                ),
                                color: white,
                              ),
                              sizedwd(height: MQ.ht(context) * .030),
                              AppText(
                                'Status',
                                color: textgrey,
                                size: MQ.wd(context) * .012,
                              ),
                              sizedwd(height: MQ.ht(context) * .010),
                              ContainerWD(
                                padding: EdgeInsets.only(
                                  left: MQ.wd(context) * .018,
                                ),
                                border: Border.all(
                                  color: textgrey,
                                ),
                                colors: white,
                                borderradius: BorderRadius.circular(10),
                                width: MQ.wd(context) * .5,
                                child: DropdownButtonFormField(
                                  value: selectedValue,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  items: leadstatus
                                      .map(
                                        (e) => DropdownMenuItem(
                                          child: Text(
                                            e.toString(),
                                          ),
                                          value: e,
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValue = value as String?;

                                      log(selectedValue.toString());
                                    });
                                  },
                                ),
                              ),
                              sizedwd(height: MQ.ht(context) * .030),
                              AppText(
                                'Remark',
                                color: textgrey,
                                size: MQ.wd(context) * .012,
                              ),
                              sizedwd(height: MQ.ht(context) * .010),
                              Textformwidget(
                                hintcolor: black,
                                leftpadding: MQ.wd(context) * .020,
                                color: white,
                                maxlines: 2,
                                autovalidateMode: AutovalidateMode.always,
                                controller: notesController,
                                onchanged: (value) {
                                  Future.delayed(const Duration(seconds: 1),
                                      () {
                                    // if (newLine) {
                                    //   return;
                                    // }
                                    String note = notesController.text;
                                    if (note.isEmpty) {
                                      notesController.text =
                                          notesController.text + '\u2022';
                                      notesController.selection =
                                          TextSelection.fromPosition(
                                        TextPosition(
                                          offset: notesController.text.length,
                                        ),
                                      );
                                    }
                                    if (note.isNotEmpty &&
                                        note.substring(note.length - 1) ==
                                            '\n') {
                                      notesController.text =
                                          notesController.text + '\u2022';
                                      notesController.selection =
                                          TextSelection.fromPosition(
                                        TextPosition(
                                          offset: notesController.text.length,
                                        ),
                                      );
                                    }
                                  });
                                },
                              ),
                              sizedwd(height: MQ.ht(context) * .030),
                              AppText(
                                ' Lead Source ',
                                color: textgrey,
                                size: MQ.wd(context) * .012,
                              ),
                              sizedwd(height: MQ.ht(context) * .010),
                              Textformwidget(
                                hintcolor: black,
                                leftpadding: MQ.wd(context) * .020,
                                color: white,
                                borderSide: BorderSide(
                                  color: textgrey,
                                ),
                              ),
                              sizedwd(height: MQ.ht(context) * .050),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: MQ.wd(context) * .060,
                                    child: Textformwidget(
                                      hintcolor: black,
                                      maxlenght: 3,
                                      leftpadding: MQ.wd(context) * .010,
                                      color: white,
                                      borderSide: BorderSide(color: textgrey),
                                      hint: '1 year',
                                    ),
                                  ),
                                  sizedwd(width: MQ.wd(context) * .005),
                                  Expanded(
                                    child: Textformwidget(
                                      hintcolor: textgrey,
                                      maxlenght: 3,
                                      leftpadding: MQ.wd(context) * .010,
                                      color: white,
                                      borderSide: BorderSide(color: textgrey),
                                      hint:
                                          'Ex : Software Developer in Company',
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    sizedwd(
                      height: MQ.ht(context) * .050,
                    ),
                    if (selectedValue != 'Cancel' &&
                        selectedValue != 'Register')
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Consumer<Controller>(
                                  builder: (context, controller, child) {
                                    return Checkbox(
                                      value: controller.isfolowcheck,
                                      onChanged: (value) {
                                        controller.followClick();
                                      },
                                    );
                                  },
                                ),
                                sizedwd(
                                  width: MQ.wd(context) * .005,
                                ),
                                AppText(
                                  'Follow up',
                                  size: MQ.wd(context) * .02,
                                  weight: FontWeight.bold,
                                ),
                              ],
                            ),
                            sizedwd(
                              height: MQ.ht(context) * .030,
                            ),
                            sizedwd(
                              width: MQ.wd(context) * .360,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppText(
                                        'Called Date',
                                        color: textgrey,
                                        size: MQ.wd(context) * .012,
                                      ),
                                      sizedwd(
                                        height: MQ.ht(context) * .010,
                                      ),
                                      SizedBox(
                                        width: MQ.wd(context) * .150,
                                        child: Textformwidget(
                                          leftpadding: MQ.wd(context) * .010,
                                          color: white,
                                          borderSide:
                                              BorderSide(color: textgrey),
                                          readonly: true,
                                          controller: callingdate,
                                        ),
                                      ),
                                    ],
                                  ),
                                  sizedwd(
                                    width: MQ.wd(context) * .010,
                                  ),
                                  Column(
                                    children: [
                                      AppText(
                                        'Next Follow up Date',
                                        color: textgrey,
                                        size: MQ.wd(context) * .012,
                                      ),
                                      sizedwd(
                                        height: MQ.ht(context) * .010,
                                      ),
                                      SizedBox(
                                        width: MQ.wd(context) * .150,
                                        child: Textformwidget(
                                          color: white,
                                          borderSide:
                                              BorderSide(color: textgrey),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            sizedwd(
                              height: MQ.ht(context) * .030,
                            ),
                            AppText(
                              'Priority',
                              color: textgrey,
                              size: MQ.wd(context) * .012,
                            ),
                            sizedwd(
                              height: MQ.ht(context) * .030,
                            ),
                            Consumer<Controller>(
                              builder: (context, controller, child) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: List.generate(
                                    4,
                                    (index) => GestureDetector(
                                      onTap: () {
                                        controller.selectedPriority = index;
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          // left: MQ.wd(context) * .030,
                                          right: MQ.wd(context) * .030,
                                        ),
                                        child: ContainerWD(
                                          alignment: Alignment.center,
                                          border: Border.all(
                                            color: textgrey,
                                          ),
                                          borderradius: BorderRadius.circular(
                                            MQ.wd(context) * .005,
                                          ),
                                          width: MQ.wd(context) * .060,
                                          height: MQ.wd(context) * .030,
                                          colors: controller.selectedPriority ==
                                                  index
                                              ? Colors.green
                                              : Colors.white,
                                          child: AppText(leadpirority[index]),
                                        ),
                                      ),
                                    ),
                                  ).toList(),
                                );
                              },
                            ),
                            sizedwd(
                              height: MQ.ht(context) * .030,
                            ),
                            Consumer<Controller>(
                              builder: (context, controller, child) {
                                return Row(
                                  children: [
                                    Checkbox(
                                      value: controller.isconform,
                                      onChanged: (value) {
                                        controller.isconformclick();
                                      },
                                    ),
                                    AppText('Are You Conform   This Form')
                                  ],
                                );
                              },
                            ),
                            sizedwd(
                              height: MQ.ht(context) * .050,
                            ),
                            ContainerWD(
                              alignment: Alignment.center,
                              onclick: () {},
                              width: MQ.wd(context) * .180,
                              height: MQ.ht(context) * .060,
                              colors: black,
                              borderradius:
                                  BorderRadius.circular(MQ.wd(context) * .005),
                              child: AppText(
                                'SUBMIT',
                                color: white,
                                size: MQ.wd(context) * .015,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
