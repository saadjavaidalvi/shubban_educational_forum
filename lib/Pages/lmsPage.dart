import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Classes/Colors.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Navigator.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';

import 'lecturePage.dart';

class LMSPage extends StatelessWidget {
  Color listTileColor = CColors.yellow;
  List<String> headerText = [
    'How to Use LMS For Students',
    'How to Use LMS For Teachers',
    'How to Sign-up On LMS',
    'How to use SEF Quiz App',
    'How to use SEF T&D App ',
    'How to use SEF Session App'
    // '5',
    // '6',
    // '7',
    // '8,9,10',
    // '11,12,13',
    // '14,15,16',
    // '17',
    // '18,19',
    // '20,21',
    // '22',
    // '23',
    // '23,25',
    // '26,36',
    // '37,43',
    // '44,45,46',
    // '45,68',
    // '69,73',
    // '74,83'
  ];
  List<String> lectueUrls = [
    'KCSC7eQqvEw',
    'Jl1KkpoZ4wQ',
    'aN9BXZO3ApY',
    '22nUdwfryfw',
    'FQSVONbflk8',
    'YX5xJfBXt_Q',
    // 'L-iWFlUlM9c',
    // 'ng5kDeEBXgo',
    // 's9Yo272mFGs',
    // 'yfJKV5Kt6fI',
    // 'Of6THHzmfy8',
    // 'tMWCiEdeDns',
    // 'CNkUSBT-4Bo',
    // '8emUI_DnFwo',
    // 'zjpiWeFS7eQ',
    // 'jTUwrIlqY3w',
    // 'sFzGZv1obSI',
    // 'COq2clyRRS8',
    // 'ul9wArI6-MY',
    // 'DTmde72Grug',
    // 'XPvFHLx5oLU'
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
                      className: LecturePage(
                        slideLectureNo: index,
                        // slides: slidesNumbers[index],
                        lectures: lectueUrls,
                      ),
                      context: context),
                  tileColor: listTileColor,
                  // leading: Icon(Icons.book),
                  // Text("${index + 1}"),
                  title: Text("${headerText[index]}"),
                  // subtitle: Text("Slide ${slidesNumbers[index]}"),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
