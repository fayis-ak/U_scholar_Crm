import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/views/home/pages/dashboard.dart';
import 'package:uscholarcrm/views/widget/container.dart';
import 'package:uscholarcrm/views/widget/divider.dart';
import 'package:uscholarcrm/views/widget/text.dart';
import 'package:uscholarcrm/views/widget/textform.dart';

import '../../../utils/reshelper.dart';

class LeadsForm extends StatelessWidget {
  const LeadsForm({super.key});

  @override
  Widget build(BuildContext context) {
    String? selectedValue;
    final TextEditingController textEditingController = TextEditingController();

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
                    AppText(
                      size: MQ.wd(context) * .015,
                      weight: FontWeight.bold,
                      'MAY 19,2022',
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
                child: Textformwidget(
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
              Container(
                child: Row(
                  children: [
                    Icon(Icons.logout),
                    Text('Logout'),
                  ],
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
            height: MQ.ht(context) * .5,
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
                              ),
                              sizedwd(height: MQ.ht(context) * .010),
                              Textformwidget(
                                color: white,
                                borderSide: BorderSide(
                                  color: textgrey,
                                ),
                              ),

                              sizedwd(height: MQ.ht(context) * .030),
                              AppText(
                                'Country',
                                color: textgrey,
                              ),
                              ContainerWD(
                                border: Border.all(
                                  color: lightblack,
                                ),
                                borderradius: BorderRadius.circular(10),
                                width: MQ.wd(context) * .5,
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton2<String>(
                                    isExpanded: true,
                                    hint: Text(
                                      'Select Item',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Theme.of(context).hintColor,
                                      ),
                                    ),
                                    items: country
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
                                    value: selectedValue,
                                    onChanged: (value) {
                                      // setState(() {
                                      //   selectedValue = value;
                                      // });
                                    },
                                    buttonStyleData: const ButtonStyleData(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
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
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                              horizontal: 10,
                                              vertical: 8,
                                            ),
                                            hintText: 'Search for an item...',
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
                                    //This to clear the search value when you close the menu
                                    onMenuStateChange: (isOpen) {
                                      if (!isOpen) {
                                        textEditingController.clear();
                                      }
                                    },
                                  ),
                                ),
                              ),

                              //
                            ],
                          ),
                        ),
                      ),
                      sizedwd(width: 50),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              'Mobile Number ',
                              color: textgrey,
                            ),
                            sizedwd(height: MQ.ht(context) * .010),
                            Textformwidget(
                              borderSide: BorderSide(
                                color: lightblack,
                              ),
                              color: white,
                            ),
                            sizedwd(height: MQ.ht(context) * .030),
                            AppText(
                              'Status',
                              color: textgrey,
                            ),
                            ContainerWD(
                              border: Border.all(
                                color: lightblack,
                              ),
                              borderradius: BorderRadius.circular(10),
                              width: MQ.wd(context) * .5,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2<String>(
                                  isExpanded: true,
                                  hint: Text(
                                    '',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Theme.of(context).hintColor,
                                    ),
                                  ),
                                  items: country
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
                                  value: selectedValue,
                                  onChanged: (value) {
                                    // setState(() {
                                    //   selectedValue = value;
                                    // });
                                  },
                                  buttonStyleData: const ButtonStyleData(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16),
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
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                            horizontal: 10,
                                            vertical: 8,
                                          ),
                                          hintText: 'Search for an item...',
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
                                  //This to clear the search value when you close the menu
                                  onMenuStateChange: (isOpen) {
                                    if (!isOpen) {
                                      textEditingController.clear();
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

List<String> country = [
  'United State',
  'America',
  'Washington',
  'iNdia',
  'Paris',
];

class MenuItem {
  final int id;
  final String label;
  final IconData icon;

  MenuItem(this.id, this.label, this.icon);
}

List<MenuItem> menuItems = [
  MenuItem(1, 'Home', Icons.home),
  MenuItem(2, 'Profile', Icons.person),
  MenuItem(3, 'Settings', Icons.settings),
  MenuItem(4, 'Favorites', Icons.favorite),
  MenuItem(5, 'Notifications', Icons.notifications)
];
