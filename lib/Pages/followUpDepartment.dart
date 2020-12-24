import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/GridView.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Navigator.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';
import 'package:shubban_educational_forum/Pages/FollowUpDepartment/FTC/followUpFtc.dart';
import 'package:shubban_educational_forum/Pages/refresherCources.dart';

class FollowUpDepartmentPage extends StatelessWidget {
  List<String> headings = ["Foundation Traning Course", "REFRESHER courses"];
  List<String> subtext = ["(FTC)", ""];
  List<Function> functions = [];

  @override
  Widget build(BuildContext context) {
    functions = [
      CNavigator.push(context: context, className: FollowUpFtc()),
      CNavigator.push(context: context, className: RefresherCource()),
    ];
    return CSimpleScaffold(
        context: context,
        title: "Follow Up Department",
        body: CGridView(
            headings: headings, subtexts: subtext, functions: functions));
  }
}
