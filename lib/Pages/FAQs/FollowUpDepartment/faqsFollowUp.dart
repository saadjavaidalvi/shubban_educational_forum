import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Classes/Colors.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Navigator.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';
import 'package:shubban_educational_forum/Pages/lecturePage.dart';

class FaqsFollowUp extends StatelessWidget {
  Color listTileColor = CColors.yellow;
  List<String> slidesNumbers = [
    'FAQs(1-10)',
    'FAQs(11-20)',
    'FAQs(21-27)',
    // '4',
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
    'l7W9ruv17-Y',
    'rRT-YiZDRS4',
    'uAv7zS8FfEI',
    // 'KG6xtMAkSQM',
    // 'eGDhVCtqvZM',
    // 'UiCekTPdO-E',
    // 'L-iWFlUlM9c',
    // 'ng5kDeEBXgo',
    // 'ZPiGLlBV2Fk',
    // '0WQvTOx9XG4',
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
      title: 'Follow Up FTC',
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
