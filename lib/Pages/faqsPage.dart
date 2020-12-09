import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/GridView.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Navigator.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';
import 'package:shubban_educational_forum/Pages/FAQs/FollowUpDepartment/faqsFollowUp.dart';

class FaqsPage extends StatelessWidget {
  List<String> headings = [
    "Speaker Department",
    "Visitor Department",
    "Student Department",
    "Follow Up Department",
    "Finance Department"
  ];
  List<Function> functions = [];
  @override
  Widget build(BuildContext context) {
    functions = [
      () {},
      () {},
      () {},
      CNavigator.push(context: context, className: FaqsFollowUp()),
      () {},
    ];
    return CSimpleScaffold(
        context: context,
        title: "FAQ's",
        body: CGridView(
            headings: headings, subtexts: null, functions: functions));
  }
}
