import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shubban_educational_forum/Globals/Classes/Colors.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Navigator.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';
import 'package:shubban_educational_forum/Pages/lecturePage.dart';

class Khatm_e_NabuwatPage extends StatefulWidget {
  @override
  _Khatm_e_NabuwatPageState createState() => _Khatm_e_NabuwatPageState();
}

class _Khatm_e_NabuwatPageState extends State<Khatm_e_NabuwatPage> {
  Color listTileColor = CColors.yellow;
  List<String> slidesNumbers = [
    '1,2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8,9,10',
    '11,12,13',
    '14,15,16',
    '17',
    '18,19',
    '20,21',
    '22',
    '23',
    '23,25',
    '26,36',
    '37,43',
    '44,45,46',
    '45,68',
    '69,73',
    '74,83'
  ];
  List<String> lectueUrls = [
    '6nqtSuwMhz0',
    'Eu7o0Mvavto',
    'Dm4epE9c1rI',
    'yzAPwDPPRDY',
    '4arE5Ywkuus',
    'UiCekTPdO-E',
    'L-iWFlUlM9c',
    'ng5kDeEBXgo',
    's9Yo272mFGs',
    'yfJKV5Kt6fI',
    'Of6THHzmfy8',
    'tMWCiEdeDns',
    'CNkUSBT-4Bo',
    '8emUI_DnFwo',
    'zjpiWeFS7eQ',
    'jTUwrIlqY3w',
    'sFzGZv1obSI',
    'COq2clyRRS8',
    'ul9wArI6-MY',
    'DTmde72Grug',
    'XPvFHLx5oLU'
  ];
  @override
  Widget build(BuildContext context) {
    return CSimpleScaffold(
      context: context,
      title: 'khatm-e-nabuwat',
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
                  title: Text("Lecture No. ${index + 1}"),
                  subtitle: Text("Slide ${slidesNumbers[index]}"),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
