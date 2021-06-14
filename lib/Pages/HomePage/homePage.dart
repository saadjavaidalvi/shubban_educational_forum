import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/GridView.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Navigator.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/onWillScope.dart';
import 'package:shubban_educational_forum/Pages/Orientation/orientation.dart';
import 'package:shubban_educational_forum/Pages/VisitDepartment/VisitorDepartmentPage.dart';
import 'package:shubban_educational_forum/Pages/faqsPage.dart';
import 'package:shubban_educational_forum/Pages/FinanceDepartment/financeDepartment.dart';
import 'package:shubban_educational_forum/Pages/followUpDepartment.dart';
import 'package:shubban_educational_forum/Pages/SpeakerDepartment/speakerDepartmentPage.dart';
import 'package:shubban_educational_forum/Pages/StudentDepartment/studentDepartmentPage.dart';

import '../LMS/lmsPage.dart';
import '../munazraPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> headings = [
    "Orientation",
    "Speaker Department",
    "Visitor Department",
    "Student Department",
    "Follow Up Department",
    "Finance Department",
    "LMS",
    "Munazra",
    'FAQ\'s',
  ];

  List<Function> functions = [];

  @override
  void initState() {
    // TODO: implement initState
    functions = [
      CNavigator.push(context: context, className: OrientationPage()),
      CNavigator.push(context: context, className: SpeakerDepartmentPage()),
      CNavigator.push(context: context, className: VisitorDepartmentPage()),
      CNavigator.push(context: context, className: StudentDepartmentPage()),
      CNavigator.push(context: context, className: FollowUpDepartmentPage()),
      CNavigator.push(context: context, className: FinanceDepartmentPage()),
      CNavigator.push(context: context, className: LMSPage()),
      CNavigator.push(context: context, className: MunazraPage()),
      CNavigator.push(context: context, className: FaqsPage()),
    ];
    // print(functions.length);
  }

  @override
  Widget build(BuildContext context) {
    return CSimpleScaffold(
      context: context,
      title: 'Home',
      body: WillPopScope(
          onWillPop: onWillPop,
          child: CGridView(
              headings: headings, subtexts: null, functions: functions)),
    );
  }
}
