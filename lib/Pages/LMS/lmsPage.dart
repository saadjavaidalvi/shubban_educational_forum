import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Classes/Colors.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Navigator.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';

import '../lecturePage.dart';
import 'HowToUseLMSStudent/howToUseLMSStudent.dart';

class LMSPage extends StatelessWidget {
  Color listTileColor = CColors.yellow;
  List<String> headerText = [
    'How to Use LMS For Students',
    'How to Use LMS For Teachers',
    'How to Sign-up On LMS',
    'How to use SEF Quiz App',
    'How to use SEF T&D App ',
    'How to use SEF Session App',
    'How to Use LMS For Teachers',
    'Moodle for Trainers',
  ];
  List<String> lectueUrls = [
    '',
    'Jl1KkpoZ4wQ',
    'aN9BXZO3ApY',
    '22nUdwfryfw',
    'FQSVONbflk8',
    'YX5xJfBXt_Q',
    'mM-kRA4Z6NU',
    'HcUGxK1nU6E',
  ];
  @override
  Widget build(BuildContext context) {
    return CSimpleScaffold(
      context: context,
      title: 'LMS',
      body: ListView.builder(
        itemCount: headerText.length,
        itemBuilder: (BuildContext context, int index) {
          bool showShareButton = true;
          if(index ==0){
            showShareButton=false;
          }
          return Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: listTileColor, borderRadius: BorderRadius.circular(5)),
              height: 80,
              child: Align(
                alignment: Alignment.center,
                child: ListTile(
                  trailing: showShareButton
                    ? CShareButton(url: lectueUrls[index])
                    : Icon(Icons.arrow_forward),
                  onTap: CNavigator.push(
                    className: 
                      showShareButton 
                        ? LecturePage(
                          slideLectureNo: index,
                          lectures: lectueUrls,
                        )
                        : HowToUseLMSStudent(),
                    context: context
                  ),
                  tileColor: listTileColor,
                  title: Text("${headerText[index]}"),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
