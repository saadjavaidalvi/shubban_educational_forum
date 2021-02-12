import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Navigator.dart';
import 'package:shubban_educational_forum/Pages/SpeakerDepartment/SEERAT%20Section/Buniadi_Insani_Haqooq/buniadiInsaniHaqooqPage.dart';
import 'package:shubban_educational_forum/Pages/SpeakerDepartment/SEERAT%20Section/Haqooq_E_Mustafa/haqooq-e-mustafaPage.dart';

import '../../../Globals/Classes/Colors.dart';
import '../../../Globals/Functions/Widgets/GridView.dart';
import '../../../Globals/Functions/Widgets/Widgets.dart';
import 'Khatm_e_Nabuwat/khatm_e_nabuwatPage.dart';
import 'Namoos_E_Risalat/namoos_e_risalatPage.dart';

class SeeratTopics extends StatelessWidget {
  // BuildContext cContext;
  List<String> homeOptionsHeading = [
    "khatm-e-nabuwat",
    "namoos-e-risalat",
    "haqooq-e-mustafa",
    "seerat-un-nabi",
    "buniadi insani haqooq",
    "fitna-e-qadianiat",
    "qadianiat ordinence",
  ];
  List<String> homeOptionsSubtext = [
    "(p.b.u.h)",
    "(p.b.u.h)",
    "(p.b.u.h)",
    "(p.b.u.h)",
    "",
    "siasi tehreek ya mazhabi?",
    "1984 (298 b,c)",
  ];
  List<Function> functions = [
    () {},
    () {},
    () {},
    () {},
    () {},
    () {},
    () {},
  ];
  _setNavigationRoutes(BuildContext context) {
    functions[0] =
        CNavigator.push(context: context, className: Khatm_e_NabuwatPage());
    functions[1] =
        CNavigator.push(context: context, className: Namoos_E_RisalatPage());
    functions[2] =
        CNavigator.push(context: context, className: Haqooq_E_MustafaPage());
    // functions[3] =
    //     CNavigator.push(context: context, className: );
    functions[4] =
        CNavigator.push(context: context, className: BuniadiInsaniHaqooqPage());
    // functions[5] = CNavigator.push(context: context, className: );
    // functions[6] = CNavigator.push(context: context, className: );
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
