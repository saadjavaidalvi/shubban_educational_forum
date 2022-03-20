import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Classes/Colors.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Navigator.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';
import 'package:shubban_educational_forum/Pages/RefresherCource/refresherCourcePart1.dart';
import 'package:shubban_educational_forum/Pages/RefresherCource/refresherCourcePart2.dart';
import 'package:shubban_educational_forum/Pages/lecturePage.dart';

import '../../Globals/Functions/Widgets/GridView.dart';

class RefresherCource extends StatelessWidget {
  List<String> homeOptionsHeading = [
    "Part No. 1",
    "Part No. 2",
  ];
  List<String> homeOptionsSubtext = ["", ""];
  List<Function> functions;

  @override
  Widget build(BuildContext context) {
    functions = [
      CNavigator.push(context: context, className: RefresherCourcePart1()),
      CNavigator.push(context: context, className: RefresherCourcePart2()),
      // CNavigator.push(context: context, className: VisotrDepartmentalCoursePage()),
    ];
    return CSimpleScaffold(
      context: context,
      title: 'Refresher Cources',
      body: CGridView(
        headings: homeOptionsHeading,
        subtexts: homeOptionsSubtext,
        functions: functions,
      ),
    );
  }
}



// {
//   Color listTileColor = CColors.yellow;
//   List<String> slidesNumbers = [
//     'Part # 1',
//     'Part # 2',
//     'Part # 3',
//   ];
//   List<String> lectueUrls = [
//     'tWBZRV8wc1g',
//     'zzzgu9N-He4',
//     'Px67S8If7Nk',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return CSimpleScaffold(
//       context: context,
//       title: 'Refresher Cources',
//       body: ListView.builder(
//         itemCount: slidesNumbers.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Padding(
//             padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
//             child: Container(
//               decoration: BoxDecoration(
//                   color: listTileColor, borderRadius: BorderRadius.circular(5)),
//               height: 80,
//               child: Align(
//                 alignment: Alignment.center,
//                 child: ListTile(
//                   trailing: CShareButton(url: lectueUrls[index]),
//                   onTap: CNavigator.push(
//                       className: LecturePage(
//                         slideLectureNo: index,
//                         lectures: lectueUrls,
//                       ),
//                       context: context),
//                   tileColor: listTileColor,
//                   title: Text("${slidesNumbers[index]}"),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
