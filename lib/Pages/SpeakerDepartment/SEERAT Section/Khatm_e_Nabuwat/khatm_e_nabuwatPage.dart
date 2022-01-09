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
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
  ];
  List<String> lectueUrls = [
    '-pSWFI3rA6Q',
    'h0CeRZQFj9I',
    'rrikWclEm6Q',
    'LwaGbmR5oTA',
    'Q0tT_Qcsm5U',
    'S7r7kB7BYU4',
    'bNA5xHD1oro',
    'FNqZ0SeOYO0',
    'h3LAul6A_dE',
    'DPXPWMnqpnY',
    '5sX_ekVfkIw',
    '159jZ4LC7uo',
    'odVPkS-ybn0',
    'QSDRQZ0JIPk',
    '7sz7ilHEFUQ',
    '5Ypbax_FwxI',
    'VYN4ychHR0Y',
    'FhGyv5zxx4k',
    'PTIh4WINs9U',
    '3W6mdf0em_M',
    '6ZnO4pEOvrQ'
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
