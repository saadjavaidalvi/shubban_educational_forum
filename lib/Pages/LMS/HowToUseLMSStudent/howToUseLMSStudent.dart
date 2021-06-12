import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Classes/Colors.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Navigator.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';

import '../../lecturePage.dart';

class HowToUseLMSStudent extends StatelessWidget {
  Color listTileColor = CColors.yellow;
  List<String> headerText = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];
  List<String> lectueUrls = [
    'ZQdxhqL6yok',
    'B8F8ZGxBnrA',
    'u0EFkfCjZlA',
    'hAeyy8nmvRA',
    'A9ygkrQ2hxI',
  ];
  @override
  Widget build(BuildContext context) {
    return CSimpleScaffold(
      context: context,
      title: 'LMS',
      body: ListView.builder(
        itemCount: headerText.length,
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
                      className:
                        LecturePage(
                          slideLectureNo: index,
                          lectures: lectueUrls,
                        ),
                      context: context),
                  tileColor: listTileColor,
                  title: Text("Part No. ${headerText[index]}"),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
