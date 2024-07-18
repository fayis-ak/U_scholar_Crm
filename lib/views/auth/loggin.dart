import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uscholarcrm/utils/constants.dart';

import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/home/homepage.dart';

class LogginScreen extends StatelessWidget {
  FocusNode myFocusNode = new FocusNode();
  LogginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(
            MQ.wd(context) * .050,
          ),
          child: Row(
            children: [
              Container(
                width: MQ.wd(context) * .4,
                height: MQ.ht(context) * .6,
                // color: Colors.red,
              ),
              SizedBox(
                width: MQ.wd(context) * .080,
              ),
              Container(
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
                            Text(
                              'Welcome',
                              style: TextStyle(
                                color: white,
                                fontSize: MQ.wd(context) * .030,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
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
                                    Text(
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
                                    Text(
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
                                            icon: Icon(
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
                              child: elevatedbt(
                                textcolor: black,
                                text: 'Login Now',
                                context: context,
                                onpress: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DashBoard(),
                                      ));
                                },
                              ),
                            )
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
      labelStyle: TextStyle(
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
      hintStyle: TextStyle(
        color: black,
      ),
    ),
    obscureText: obscure,
    obscuringCharacter: '*',
  );
}

Widget elevatedbt({
  required context,
  VoidCallback? onpress,
  required String text,
  backgroudcolor,
  textcolor,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      side: BorderSide(color: btcolor),
      backgroundColor: backgroudcolor,
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(
          MQ.wd(context) * .005,
        ),
      ),
    ),
    onPressed: onpress,
    child: Text(
      text,
      style: TextStyle(
        color: textcolor,
        fontSize: MQ.wd(context) * .010,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
