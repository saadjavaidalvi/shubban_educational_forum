import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Classes/Colors.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Navigator.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';
import 'package:shubban_educational_forum/Pages/lecturePage.dart';

class VisotrDepartmentalCoursePage extends StatelessWidget {
  Color listTileColor = CColors.yellow;
  List<String> slidesNumbers = [
    'Part # 1',
    'Part # 2',
    'Part # 3',
  ];
  List<String> lectueUrls = [
    'kwucgVelitI',
    'qQGQPdST1a4',
    'PDaUur-PTcY',
  ];
  @override
  Widget build(BuildContext context) {
    return CSimpleScaffold(
      context: context,
      title: 'Refresher Cources',
      body: ListView.builder(
        itemCount: slidesNumbers.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: listTileColor, borderRadius: BorderRadius.circular(5)),
              height: 80,
              child: Align(
                alignment: Alignment.center,
                child: ListTile(
                  trailing: CShareButton(url: lectueUrls[index]),
                  onTap: CNavigator.push(
                      className: LecturePage(
                        slideLectureNo: index,
                        lectures: lectueUrls,
                      ),
                      context: context),
                  tileColor: listTileColor,
                  title: Text("${slidesNumbers[index]}"),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
