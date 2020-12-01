import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/GridView.dart';

import '../../Globals/Classes/Colors.dart';
import '../../Globals/Functions/Widgets/Navigator.dart';
import '../../Globals/Functions/Widgets/Widgets.dart';
import '../../Globals/Functions/Widgets/onWillScope.dart';
import 'seeratTopicsPage.dart';

class SpeakerDepartmentPage extends StatefulWidget {
  SpeakerDepartmentPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SpeakerDepartmentPageState createState() => _SpeakerDepartmentPageState();
}

class _SpeakerDepartmentPageState extends State<SpeakerDepartmentPage> {
  @override
  Widget build(BuildContext context) {
    List<String> homeOptionsHeading = [
      "SEERAT Section",
      "LIFE SKILLS section",
      "REFRESHER courses",
      "Foundation Traning Course"
      // "FAQ'S"
    ];
    List<String> homeOptionsSubtext = ["", "", "", "(FTC)"];
    List<Function> functions = [
      CNavigator.push(context: context, className: SeeratTopics()),
      () {},
      () {},
      () {}
    ];

    return CScaffold(
        context: context,
        title: 'Speaker Department',
        body: CGridView(
            headings: homeOptionsHeading,
            subtexts: homeOptionsSubtext,
            functions: functions));
  }
}
