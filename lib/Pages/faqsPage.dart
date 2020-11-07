import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/GridView.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';

class FaqsPage extends StatelessWidget {
  List<String> headings = [
    "Speaker Department",
    "Visitor Department",
    "Student Department",
    "Follow Up Department",
    "Finance Department"
  ];
  @override
  Widget build(BuildContext context) {
    return CSimpleScaffold(
        context: context,
        title: "FAQ's",
        body: CGridView(headings: headings, subtexts: null, functions: null));
  }
}
