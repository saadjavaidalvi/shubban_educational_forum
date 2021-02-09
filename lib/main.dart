import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Classes/Colors.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';
import 'package:shubban_educational_forum/Pages/HomePage/homePage.dart';
import 'package:shubban_educational_forum/Pages/SpeakerDepartment/SEERAT%20Section/seeratTopicsPage.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'Pages/SpeakerDepartment/speakerDepartmentPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
