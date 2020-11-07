import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Classes/Colors.dart';
import 'package:shubban_educational_forum/Globals/Vairables/variables.dart';
import 'package:shubban_educational_forum/main.dart';

import '../../../Pages/speakerDepartmentPage.dart';

CScaffold(
    {String title,
    Color backgroundColor,
    AppBar appBar,
    Widget body,
    @required BuildContext context}) {
  return Scaffold(
    // drawer: CDrawer(context: context),
    appBar: AppBar(
      centerTitle: true,
      iconTheme: new IconThemeData(color: Colors.white),
      backgroundColor: CColors.dGreen,
      title: Text(
        title.toUpperCase(),
        style: TextStyle(color: Colors.white),
      ),
    ),
    body: Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Image.asset(
                'assets/Bg.png',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        body
      ],
    ),
  );
}

CSimpleScaffold(
    {String title,
    Color backgroundColor,
    PreferredSizeWidget appBar,
    Widget body,
    @required BuildContext context,
    bool showAppBar}) {
  if (showAppBar == null) {
    showAppBar = true;
  }
  if (title == null) {
    title = '';
  }
  return Scaffold(
    appBar: showAppBar
        ? appBar == null
            ? AppBar(
                centerTitle: true,
                iconTheme: new IconThemeData(color: Colors.white),
                backgroundColor: CColors.dGreen,
                title: Text(
                  title.toUpperCase(),
                  style: TextStyle(color: Colors.white),
                ),
              )
            : appBar
        : null,
    body: Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Image.asset(
                'assets/Bg.png',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        body
      ],
    ),
  );
}

enum hello {
  speakerDepartment,
  visitorDepartment,
  followUpDepartment,
  financeDepartment,
  studentDepartment,
  faq
}

// CDrawer({List<ListTile> listTiles, @required BuildContext context}) {
//   int index = 1;
//   Map<int, Function> iteamsFunctions = {
//     hello.speakerDepartment.index: () {
//       if (PAGE.speakerDept.index != Variables.PageNo)
//         Navigator.pushAndRemoveUntil(
//             context,
//             MaterialPageRoute(
//               builder: (context) => SpeakerDepartmentPage(),
//             ),
//             (route) => false);
//     },
//     hello.visitorDepartment.index: () {},
//     hello.followUpDepartment.index: () {},
//     hello.financeDepartment.index: () {},
//     hello.studentDepartment.index: () {},
//     hello.faq.index: () {},
//   };
//   Map<int, String> iteamsNames = {
//     hello.speakerDepartment.index: "Speaker Department",
//     hello.visitorDepartment.index: "Visitor Department",
//     hello.followUpDepartment.index: "FollowUp Department",
//     hello.financeDepartment.index: "Finance Department",
//     hello.studentDepartment.index: "Student Department",
//     hello.faq.index: "FAQ",
//   };
//   List<Widget> drawerListTiles = [];
//   drawerListTiles.add(
//     DrawerHeader(
//       decoration: BoxDecoration(),
//       child: Image.asset('assets/Logo.png'),
//     ),
//   );
//   iteamsNames.forEach((key, value) {
//     drawerListTiles.add(CListTile(
//         title: value.toUpperCase(),
//         onTap: iteamsFunctions[key],
//         index: index++));
//   });

//   return SafeArea(
//     child: Drawer(
//       child: Container(
//         color: CColors.yellow,
//         child: ListView(
//           children: drawerListTiles,
//         ),
//       ),
//     ),
//   );
// }

CListTile({String title, Function onTap, Color color, int index}) {
  return ListTile(
    trailing: Icon(
      Icons.chevron_right,
      color: Colors.black,
    ),
    tileColor: index % 2 == 0 ? CColors.lGreen : CColors.yellow,
    title: Text(title),
    onTap: onTap,
  );
}
