import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/GridView.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';

class StudentDepartmentPage extends StatelessWidget {
  List<String> headings = ["Foundation Traning Course", "REFRESHER courses"];
  List<String> subtext = ["(FTC)", ""];
  @override
  Widget build(BuildContext context) {
    return CSimpleScaffold(
        context: context,
        title: "Student Department",
        body:
            CGridView(headings: headings, subtexts: subtext, functions: null));
  }
}
