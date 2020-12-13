import 'package:flutter/widgets.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/GridView.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Navigator.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';
import 'package:shubban_educational_forum/Pages/FAQs/SpeakerDepartment/KhatmENabuwat/khatmENabuwat.dart';

class FaqSpearkerDepartmentPage extends StatelessWidget {
  List<String> headings = ['khatm-e-nabuwat'];
  List<Function> functions = [];
  @override
  Widget build(BuildContext context) {
    functions = [
      CNavigator.push(context: context, className: KhatmENabuwatFaq()),
    ];
    return CSimpleScaffold(
        context: context,
        title: "FAQ's Speaker Department",
        body: CGridView(
            headings: headings, subtexts: null, functions: functions));
  }
}
