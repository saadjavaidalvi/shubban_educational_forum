
import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/GridView.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Navigator.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';
import 'package:shubban_educational_forum/Pages/SpeakerDepartment/SEERAT%20Section/Fitna-E-Qadianiat/Namoose_E_Risalat_Aur_UN/namoose_e_risalat_aur_un.dart';

import 'Qadiyaniat_Mahzabhi/fitna-e-qadianiat.dart';
class Fitna_E_Qadianiat extends StatelessWidget {

  List<String> homeOptionsHeading = [
    "Qadiyaniat mahzabhi",
    "Namoose e Risalat",
  ];
  List<String> homeOptionsSubtext = [
    "ya saiasi thereek",
    "aur UN",
  ];
  List<Function> functions = [
    () {},
    () {},
  ];
  _setNavigationRoutes(BuildContext context) {
    functions[0] =
        CNavigator.push(context: context, className: Qadiyaniat_Mahzabhi());
    functions[1] =
        CNavigator.push(context: context, className: Namoose_e_Risalat_aur_UN());
  }

  @override
  Widget build(BuildContext context) {
    // cContext = context;
    _setNavigationRoutes(context);
    return CSimpleScaffold(
        context: context,
        title: 'Fitna-E-Qadianiat',
        body: CGridView(
            headings: homeOptionsHeading,
            subtexts: homeOptionsSubtext,
            functions: functions));
  }
}
