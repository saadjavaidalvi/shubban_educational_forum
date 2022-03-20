import 'package:flutter/material.dart';

import '../../Globals/Classes/Colors.dart';
import '../../Globals/Functions/Widgets/Navigator.dart';
import '../../Globals/Functions/Widgets/Widgets.dart';
import '../lecturePage.dart';

class RefresherCourcePart1 extends StatelessWidget {
  const RefresherCourcePart1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color listTileColor = CColors.yellow;
    List<String> slidesNumbers = [
      'Part # 1',
      'Part # 2',
      'Part # 3',
    ];
    List<String> lectueUrls = [
      'tWBZRV8wc1g',
      'zzzgu9N-He4',
      'Px67S8If7Nk',
    ];
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
                    context: context,
                  ),
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
