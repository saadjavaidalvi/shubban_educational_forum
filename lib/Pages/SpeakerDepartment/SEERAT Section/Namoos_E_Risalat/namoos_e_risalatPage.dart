import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shubban_educational_forum/Globals/Classes/Colors.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Navigator.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';
import 'package:shubban_educational_forum/Pages/lecturePage.dart';

class Namoos_E_RisalatPage extends StatefulWidget {
  @override
  _Namoos_E_RisalatPageState createState() => _Namoos_E_RisalatPageState();
}

class _Namoos_E_RisalatPageState extends State<Namoos_E_RisalatPage> {
  Color listTileColor = CColors.yellow;
  List<String> slidesNumbers = [
    '1',
    '2',
    '3 (PART 1)',
    '3 (PART 2)',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12 (PART 1)',
    '12 (PART 2)',
    '13',
    '14'
  ];
  List<String> lectueUrls = [
    'pTI2Lxu7jeE',
    'FIf9iDeK1s4',
    'XRqwLPqoF1s',
    'Y0shMcIdrQc',
    'b4ApbzoQGLA',
    'bD8QiMQ0GVs',
    'aOXYmCxSn98',
    'uOSorpJPJd4',
    'HoyPZ2drnM8',
    'xYCJWKEemkc',
    'ZIygWzB-nks',
    'HQPrFX9og7A',
    'trrS4Ee6Zt0',
    'VToQ9B2jWfY',
    'IYnZHkZTQNw',
    'WNbdYrw1s6g',
  ];
  @override
  Widget build(BuildContext context) {
    return CSimpleScaffold(
      context: context,
      title: 'Namoos-e-risalat',
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
                  title: Text("Lecture No. ${slidesNumbers[index]}"),
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
