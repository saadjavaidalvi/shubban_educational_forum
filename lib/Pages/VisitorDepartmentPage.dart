import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/GridView.dart';
import 'package:shubban_educational_forum/Pages/VisitDepartment/FTC/visitFtc.dart';

import '../Globals/Classes/Colors.dart';
import '../Globals/Functions/Widgets/Navigator.dart';
import '../Globals/Functions/Widgets/Widgets.dart';
import '../Globals/Functions/Widgets/onWillScope.dart';
import 'SpeakerDepartment/seeratTopicsPage.dart';

class VisitorDepartmentPage extends StatefulWidget {
  VisitorDepartmentPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _VisitorDepartmentPageState createState() => _VisitorDepartmentPageState();
}

class _VisitorDepartmentPageState extends State<VisitorDepartmentPage> {
  List<String> homeOptionsHeading = [
    "Foundation Traning Course",
    "REFRESHER courses"
  ];
  List<String> homeOptionsSubtext = ["(FTC)", ""];
  List<Function> functions;

  @override
  Widget build(BuildContext context) {
    functions = [
      CNavigator.push(context: context, className: VisitFtc()),
      () {}
    ];
    return CSimpleScaffold(
        context: context,
        title: 'Visitor Department',
        body: CGridView(
            headings: homeOptionsHeading,
            subtexts: homeOptionsSubtext,
            functions: functions));
  }
}
