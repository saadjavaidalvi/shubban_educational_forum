import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Classes/Colors.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Navigator.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';
import 'package:shubban_educational_forum/Pages/lecturePage.dart';

class BuniadiInsaniHaqooqPage extends StatelessWidget {
  Color listTileColor = CColors.yellow;
  List<String> slidesNumbers = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    // '8',
    // '9',
    // '10',
    // '11',
    // '12 (PART 1)',
    // '12 (PART 2)',
    // '13',
    // '14'
  ];
  List<String> lectueUrls = [
    'KZ0Obv6iEfk',
    'vjeUDeRbZ-4',
    '9UDM8uoqZUo',
    'bl4BHzb6c6Q',
    'HQF67THxQpA',
    'CcgsE_Xg1JQ',
    '0nnoZWdVbGc',
    // 'fAkHOpBHtPg',
    // 'JKN08O4Oa8g',
    // 'Ny1tXGYoVzs',
    // '6NURuTQS06g',
    // 'HQPrFX9og7A',
    // 'trrS4Ee6Zt0',
    // 'VToQ9B2jWfY',
    // 'IYnZHkZTQNw',
  ];
  @override
  Widget build(BuildContext context) {
    return CSimpleScaffold(
      context: context,
      title: 'Buniadi Insani Haqooq',
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
                        // slides: slidesNumbers[index],
                        lectures: lectueUrls,
                      ),
                      context: context),
                  tileColor: listTileColor,
                  // leading: Icon(Icons.book),
                  // Text("${index + 1}"),
                  title: Text("Part No. ${slidesNumbers[index]}"),
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
