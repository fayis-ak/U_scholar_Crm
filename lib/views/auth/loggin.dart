 

 
import 'package:flutter/material.dart';
 
import 'package:flutter_svg/svg.dart';
import 'package:uscholarcrm/utils/constants.dart';

import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/home/module/addlead/homepage_addlead.dart';
import 'package:uscholarcrm/views/home/module/application/homepage_application.dart';

import 'package:uscholarcrm/views/home/module/counsiller/pages/homepagecounsiller.dart';
import 'package:uscholarcrm/views/home/module/documentation/home_document.dart';
import 'package:uscholarcrm/views/widget/elevatedbutton.dart';
import 'package:uscholarcrm/views/widget/text.dart';

class LogginScreen extends StatelessWidget {
 
  LogginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String? selectedvalue;
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(
            MQ.wd(context) * .050,
          ),
          child: Row(
            children: [
              sizedwd(
                  width: MQ.wd(context) * .4,
                  height: MQ.ht(context) * .6,
                  // color: Colors.red,
                  child: SvgPicture.asset(
                    'assets/image/logo.svg',
                  )),
              SizedBox(
                width: MQ.wd(context) * .080,
              ),
              sizedwd(
                width: MQ.wd(context) * .300,
                height: MQ.ht(context) * .7,
                // color: Colors.blue,
                child: Column(
                  children: [
                    Container(
                      height: MQ.ht(context) * .7,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(
                          MQ.wd(context) * .020,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(
                          MQ.wd(context) * .020,
                        ),
                        child: Column(
                          children: [
                            Tooltip(
                              message: 'Selecte Module',
                              textAlign: TextAlign.center,
                              child: Align(
                                alignment: Alignment.topRight,
                                child: sizedwd(
                                  width: MQ.wd(context) * .30,
                                  child: DropdownButtonFormField<String>(
                                    icon:const Icon(Icons.grid_view_rounded),
                                    dropdownColor: black,
                                    style:const TextStyle(color: white),
                                    decoration:const InputDecoration(
                                      border: InputBorder.none,
                                      // border: OutlineInputBorder(),
                                    ),
                                    value: selectedvalue,
                                    items: module
                                        .map(
                                          (e) => DropdownMenuItem(
                                           
                                            value: e,
                                             child: AppText(
                                              e.toString(),
                                            ),
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (value) {
                                      selectedvalue = value;
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Welcome',
                              style: TextStyle(
                                color: white,
                                fontSize: MQ.wd(context) * .030,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          const  Text(
                              'Log in to your account',
                              style: TextStyle(
                                color: white,
                                // fontSize: MQ.wd(context) * .030,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: MQ.ht(context) * .020),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                   const Text(
                                      'Email',
                                      style: TextStyle(
                                        color: white,
                                        // fontSize: MQ.wd(context) * .030,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: MQ.wd(context) * .26,
                                      height: MQ.ht(context) * .080,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: MQ.ht(context) * .010,
                                        ),
                                        child: textForm(
                                          context: context,
                                          obscure: false,
                                          hint: 'Enter your email',
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: MQ.ht(context) * .020),
                                  const  Text(
                                      'Password',
                                      style: TextStyle(
                                        color: white,
                                        // fontSize: MQ.wd(context) * .030,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: MQ.wd(context) * .26,
                                      height: MQ.ht(context) * .080,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: MQ.ht(context) * .010,
                                        ),
                                        child: textForm(
                                          context: context,
                                          obscure: true,
                                          icon: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.visibility_off,
                                            ),
                                          ),
                                          hint: 'Enter your password',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: MQ.ht(context) * .050),
                            SizedBox(
                              width: double.infinity,
                              height: MQ.ht(context) * .060,
                              child: ElevatedbuttonWd(
                                borderradius: MQ.wd(context) * .005,
                                textcolor: black,
                                text: 'Login Now',
                                textsize: MQ.wd(context) * .015,
                                onpress: () {
                                  switch (selectedvalue) {
                                    case 'Counsiller':
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                            const  HomePageCounsiller(),
                                        ),
                                      );
                                      break;
                                    case 'Documentation':
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                               const HomePageDocument()),
                                      );
                                      break;
                                    case 'AddLead':
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                               const HomePageAddLead()),
                                      );
                                      break;
                                    case 'Application':
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                              const  HomePageApplication()),
                                      );
                                      break;
                                    default:
                                      break;
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

Widget textForm({
  final obscure,
  IconButton? icon,
  String? hint,
  required context,
}) {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      labelStyle:const TextStyle(
        color: Colors.red,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          MQ.wd(context) * .005,
        ),
      ),
      suffixIcon: icon,
      suffixIconColor: black,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          MQ.wd(context) * .005,
        ),
      ),
      fillColor: white,
      filled: true,
      hintText: hint,
      hintStyle:const TextStyle(
        color: black,
      ),
    ),
    obscureText: obscure,
    obscuringCharacter: '*',
  );
}
