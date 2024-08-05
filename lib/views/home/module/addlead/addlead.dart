import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:flutter/material.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/dashboard.dart';

import 'package:uscholarcrm/views/widget/container.dart';
import 'package:uscholarcrm/views/widget/divider.dart';
import 'package:uscholarcrm/views/widget/elevatedbutton.dart';
import 'package:uscholarcrm/views/widget/text.dart';
import 'package:uscholarcrm/views/widget/textform.dart';

class AddLead extends StatelessWidget {
  AddLead({super.key});
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MQ.wd(context) * .030,
              vertical: MQ.wd(context) * .030,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                sizedwd(
                  width: MQ.wd(context) * .20,
                  child: Row(
                    children: [
                      const Icon(Icons.arrow_forward_ios_outlined),
                      const Icon(Icons.arrow_forward_ios_outlined),
                      AppText(
                        size: MQ.wd(context) * .015,
                        weight: FontWeight.bold,
                        'MAY 19,2022',
                      )
                    ],
                  ),
                ),
                const Badge(
                  label: Text('5'),
                  textColor: notificolor,
                  backgroundColor: green,
                  child: Icon(Icons.notifications),
                ),
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
                const Row(
                  children: [
                    Icon(Icons.logout),
                    Text('Logout'),
                  ],
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
            child: leadForm(context),
          ),
          divider(),
          sizedwd(
            height: MQ.ht(context) * .030,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: MQ.wd(context) * .030,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      'Student Name',
                      color: textgrey,
                      size: MQ.wd(context) * .01,
                    ),
                    sizedwd(
                      height: MQ.ht(context) * .005,
                    ),
                    sizedwd(
                      width: MQ.wd(context) * .3,
                      child: Textformwidget(
                        fillcolor: white,
                        borderSide: const BorderSide(color: textgrey),
                        leftpadding: MQ.wd(context) * .010,
                      ),
                    ),
                    sizedwd(
                      height: MQ.ht(context) * .030,
                    ),
                    AppText(
                      ' Mobile Number',
                      color: textgrey,
                      size: MQ.wd(context) * .01,
                    ),
                    sizedwd(
                      height: MQ.ht(context) * .005,
                    ),
                    sizedwd(
                      width: MQ.wd(context) * .3,
                      child: Textformwidget(
                        fillcolor: white,
                        borderSide: const BorderSide(color: textgrey),
                        leftpadding: MQ.wd(context) * .010,
                      ),
                    ),
                    sizedwd(
                      height: MQ.wd(context) * .020,
                    ),
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
                      width: MQ.wd(context) * .3,
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
                            // setState(() {
                            //   selectedValue = value;

                            //   log(selectedValue.toString());
                            // });
                          },
                          buttonStyleData: const ButtonStyleData(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            height: 40,
                            width: 200,
                          ),
                          dropdownStyleData: const DropdownStyleData(
                            maxHeight: 200,
                          ),
                          menuItemStyleData: const MenuItemStyleData(
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
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 8,
                                  ),
                                  hintText: 'Search Country...',
                                  hintStyle: const TextStyle(fontSize: 12),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
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
                    sizedwd(
                      height: MQ.wd(context) * .020,
                    ),
                    AppText(
                      'Staff Name',
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
                      width: MQ.wd(context) * .3,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2<String>(
                          isExpanded: true,
                          hint: Text(
                            selectedValue ?? 'Staff name',
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                          items: staffnames
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
                          value: staffnames.contains(selectedValue)
                              ? selectedValue
                              : null,
                          onChanged: (value) {
                            // setState(() {
                            //   selectedValue = value;

                            //   log(selectedValue.toString());
                            // });
                          },
                          buttonStyleData: const ButtonStyleData(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            height: 40,
                            width: 200,
                          ),
                          dropdownStyleData: const DropdownStyleData(
                            maxHeight: 200,
                          ),
                          menuItemStyleData: const MenuItemStyleData(
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
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 8,
                                  ),
                                  hintText: 'Search Country...',
                                  hintStyle: const TextStyle(fontSize: 12),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
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
                    sizedwd(
                      height: MQ.ht(context) * .030,
                    ),
                    sizedwd(
                      width: MQ.wd(context) * .15,
                      height: MQ.ht(context) * .07,
                      child: ElevatedbuttonWd(
                        borderradius: MQ.wd(context) * .009,
                        text: 'SUBMIT',
                        textsize: MQ.wd(context) * .010,
                        backgroudcolor: black,
                        textcolor: white,
                        onpress: () {},
                      ),
                    ),
                    sizedwd(
                      height: MQ.ht(context) * .080,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
