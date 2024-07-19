import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uscholarcrm/utils/constants.dart';
import 'package:uscholarcrm/utils/reshelper.dart';

class Textformwidget extends StatelessWidget {

  
  const Textformwidget({
    super.key,
  
  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        filled: true,
        hintText: 'Search here',
        contentPadding: EdgeInsets.only(
          left: MQ.wd(context) * .020,
        ),
        hintStyle: TextStyle(
          color: black,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            MQ.wd(context) * .020,
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
}
