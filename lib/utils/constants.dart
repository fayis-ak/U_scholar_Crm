 
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:uscholarcrm/provider/controller.dart';
import 'package:uscholarcrm/utils/reshelper.dart';
import 'package:uscholarcrm/views/home/module/addlead/addlead.dart';
import 'package:uscholarcrm/views/home/module/addlead/dashboard.dart';
import 'package:uscholarcrm/views/home/module/addlead/viewlead.dart';
import 'package:uscholarcrm/views/home/module/application/dashboardapplication.dart';
import 'package:uscholarcrm/views/home/module/application/followupapplication.dart';
import 'package:uscholarcrm/views/home/module/application/newapplication.dart';
import 'package:uscholarcrm/views/home/module/application/tottalapplication.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/attendence.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/canceledlead.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/dashboard.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/followpleads.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/leadform.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/newleads.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/registreadlead.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/registreddetails.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/report.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/studentstatus.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/support.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/tottalleads.dart';
import 'package:uscholarcrm/views/home/module/counsiller/pages/updateform.dart';
import 'package:uscholarcrm/views/home/module/documentation/DropedDocuments.dart';
import 'package:uscholarcrm/views/home/module/documentation/dashboard.dart';
import 'package:uscholarcrm/views/home/module/documentation/followupdocumnets.dart';
import 'package:uscholarcrm/views/home/module/documentation/newdocuments.dart';
import 'package:uscholarcrm/views/home/module/documentation/tottaldocuments.dart';

const Color white = Color.fromARGB(255, 255, 255, 255);
const Color whitegrey = Color.fromARGB(248, 248, 248, 1);
const Color green = Color.fromARGB(248, 0, 255, 55);
const Color greenlight = Color(0xff3AAC8D);
const Color black = Color.fromARGB(255, 0, 0, 0);
const Color notificolor = Color.fromARGB(41, 157, 145, 1);
const Color whiteshide = Color(0xffD9D9D9);
const Color lightblack = Color(0xff706868);
const Color btcolor = Color(0xff16C098);
const Color bttextcolor = Color(0xff00B087);
const Color bluehigh = Color(0xff379BFD);
const Color blueshide = Color(0xffF4FCFD);
const Color vluemidium = Color(0xffFE6F4FF);

const Color selectedindex = Color(0xff00EBD5);
const Color orangelight = Color(0xffFAC78A);
const Color greyshide = Color(0xffF3F3F3);

const Color textgrey = Color(0xff9197B3);

const Color red = Color(0xffFF0202);
const Color redshide = Color(0xffF1ECFF);

const Color verticaldivider = Color(0xff8D8181);
const Color blue = Color(0xff3E4DD1);

//  controller
TextEditingController callingdate = TextEditingController(text: '14/10/2024');

List<String> drawertext = [
  'Dashboard',
  'New Leads',
  'Followup Leads',
  'Registered Leads',
  'Total Leads',
  'Leads Form',
  'Cancelled Leads',
  'Attendence',
  'Report',
  'Support',
  // 'Add Lead',
  'Student Status'
];

//counsiller screen
final List<Widget> screen = [
 const DashBoard(),
  const Newleads(),
  Consumer<Controller>(
    builder: (context, controller, child) =>
        controller.isclick ? const UpdateForm() :const FollowupLeads(),
  ),
  Consumer<Controller>(
    builder: (context, controller, child) =>
        controller.isclick ?const RegistreadDetails() :const Registreadlead(),
  ),
  const TottalLead(),
  const LeadsForm(),
 const CanceledLead(),
 const Attendence(),
 const Report(),
 const Support(),
 const StudentStatus(),
];

List<String> addlead = [
  'DASHBOARD',
  'Add Lead',
  'View Lead',
];

const List<Icon> addleadicone = [
  Icon(Icons.dashboard),
  Icon(Icons.wallet),
  Icon(Icons.view_agenda),
];
//addlead
   List<Widget> addleadscreen = [
 const DashBoardAddLead(),
  AddLead(),
 const ViewLead(),
];

List<String> country = [
  'United State',
  'America',
  'Washington',
  'iNdia',
  'Paris',
];

List<String> leadstatus = [
  'Followup',
  'Cancel',
  'Note Connect',
  'Register',
];

List<String> study = [
  'SSLC',
  '+2',
  'DEGREE',
  'PG',
];

List<String> leadpirority = [
  'HOT',
  'WARM',
  'COLD',
  'FEATURE',
];

List<String> module = [
  'Counsiller',
  'Documentation',
  'Application',
  'Admin',
  'AddLead'
];

List<String> staffnames = [
  'Mridula',
  'Ayisha',
  'Anusree',
  'Vijisha',
  'Reshma',
];
 const List<Icon> icons = [
  Icon(Icons.dashboard),
  Icon(Icons.newspaper),
  Icon(Icons.follow_the_signs),
  Icon(Icons.app_registration_outlined),
  Icon(Icons.leaderboard),
  Icon(Icons.addchart_sharp),
  Icon(Icons.cancel_presentation_outlined),
  Icon(Icons.calendar_month),
  Icon(Icons.report_gmailerrorred),
  Icon(Icons.support_agent),
  Icon(Icons.star_outline_sharp),
];

Widget logo(BuildContext context) {
  return Container(
    width: MQ.wd(context) * .050,
    height: MQ.wd(context) * .050,
    decoration:const BoxDecoration(),
    child: SvgPicture.asset(
      'assets/image/logo.svg',
      height: 5,
      width: 5,
    ),
  );
}

class AppStyles {
  static TextStyle commonTextStyle(BuildContext context) {
    final double dynamicFontSize = MediaQuery.of(context).size.width * 0.010;

    return TextStyle(
      fontSize: dynamicFontSize,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    );
  }

  static TextStyle Header(
      {context, TextDecoration, required double, required Color}) {
    // final double dynamicFontSize = MediaQuery.of(context).size.width * 0.020;

    return TextStyle(
      decoration: TextDecoration,
      fontSize: double,
      fontWeight: FontWeight.bold,
      color: Color,
    );
  }
}

class sizedwd extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget? child;

  const sizedwd({
    super.key,
    this.width,
    this.height,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: child,
    );
  }
}

// documents
List<String> document = [
  'DashBoard',
  'New Documents',
  'Followup Documents',
  'Total Documents',
  'Droped Documents',
];

  List<Widget> documentscreen = [
 const DashBoardDocuments(),
  NewDocuments(),
 const FollowupDocuments(),
 const TottalDocuments(),
 const DropedDocuments(),
];

const List<Icon> documenticone = [
  Icon(Icons.dashboard),
  Icon(Icons.next_week_outlined),
  Icon(Icons.follow_the_signs),
  Icon(Icons.all_inbox),
  Icon(Icons.cancel_outlined),
];

//application

const List<String> Application = [
  'Dashboard',
  'New Application',
  'Followup Application',
  'Total Application',
];

const List<Widget> applicationscreen = [
  DashBoardApplication(),
  NewApplication(),
  FollowupApplication(),
  TottalApplication(),
];

 const List<Icon> applicationicone = [
  Icon(Icons.dashboard),
  Icon(Icons.next_week_outlined),
  Icon(Icons.follow_the_signs),
  Icon(Icons.all_inbox),
];

List<String> documentstatus = [
  'Document Pending',
  'Complete Document Recived',
  'SOP Creating',
  'Move To Application'
];
