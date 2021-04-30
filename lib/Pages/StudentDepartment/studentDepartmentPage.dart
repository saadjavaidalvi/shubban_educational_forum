import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/GridView.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Navigator.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';
import 'package:shubban_educational_forum/Pages/StudentDepartment/FTC/studentFtcLectures.dart';

import 'StudentDepartmantalCource/studentDepartmentalCourcePage.dart';

class StudentDepartmentPage extends StatelessWidget {
  List<String> headings = ["Foundation Traning Course", "REFRESHER courses","Departmental Course"];
  List<String> subtext = ["(FTC)", "",""];
  List<Function> functions = [];

  @override
  Widget build(BuildContext context) {
    functions = [
      CNavigator.push(context: context, className: StudentFtcLectures()),
      () {},
      CNavigator.push(context: context, className: StudentDepartmentalCoursePage()),
    ];
    return CSimpleScaffold(
        context: context,
        title: "Student Department",
        body: CGridView(
            headings: headings, subtexts: subtext, functions: functions));
  }
}
