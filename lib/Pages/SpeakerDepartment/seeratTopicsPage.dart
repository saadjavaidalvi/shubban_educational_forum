import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Navigator.dart';
import 'package:shubban_educational_forum/Pages/SpeakerDepartment/namoos_e_risalatPage.dart';

import '../../Globals/Classes/Colors.dart';
import '../../Globals/Functions/Widgets/GridView.dart';
import '../../Globals/Functions/Widgets/Widgets.dart';
import 'khatm_e_nabuwatPage.dart';

class SeeratTopics extends StatelessWidget {
  // BuildContext cContext;
  List<String> homeOptionsHeading = [
    "khatm-e-nabuwat",
    "namoos-e-risalat",
    "haqooq-e-mustafa",
    "seerat-un-nabi",
    "buniadi insani",
    "fitna-e-qadianiat",
    "qadianiat ordinence",
    // "faq's"
  ];
  List<String> homeOptionsSubtext = [
    "(p.b.u.h)",
    "(p.b.u.h)",
    "(p.b.u.h)",
    "(p.b.u.h)",
    "haqooq",
    "siasi tehreek ya mazhabi?",
    "1984 (298 b,c)",
    // ""
  ];
  List<Function> functions = [
    () {},
    () {},
    () {},
    () {},
    () {},
    () {},
    () {},
    // () {},
  ];
  _setNavigationRoutes(BuildContext context) {
    functions[0] =
        CNavigator.push(context: context, className: Khatm_e_NabuwatPage());
    functions[1] =
        CNavigator.push(context: context, className: Namoos_E_RisalatPage());
  }

  @override
  Widget build(BuildContext context) {
    // cContext = context;
    _setNavigationRoutes(context);
    return CSimpleScaffold(
        context: context,
        title: 'SEERAT TOPICS',
        body: CGridView(
            headings: homeOptionsHeading,
            subtexts: homeOptionsSubtext,
            functions: functions));
  }
}
