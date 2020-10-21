import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Classes/Colors.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets.dart';
import 'package:shubban_educational_forum/seeratTopicsPage.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.green,
        // primaryColor: Colors.green,
        // secondaryHeaderColor: Colors.yellow,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SpeakerDepartment(title: 'Flutter Demo Home Page'),
    );
  }
}

class SpeakerDepartment extends StatefulWidget {
  SpeakerDepartment({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _SpeakerDepartmentState createState() => _SpeakerDepartmentState();
}

class _SpeakerDepartmentState extends State<SpeakerDepartment> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'WFPB_pBKOK0',
    flags: YoutubePlayerFlags(
      // autoPlay: true,
      mute: false,
    ),
  );

  // YoutubePlayer(
  //     controller: _controller,
  //     showVideoProgressIndicator: true,
  //     videoProgressIndicatorColor: Colors.amber,
  //     progressColors: ProgressColors(
  //         playedColor: Colors.amber,
  //         handleColor: Colors.amberAccent,
  //     ),
  //     onReady () {
  //         _controller.addListener(listener);
  //     },
  // ),
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    List<String> homeOptionsHeading = [
      "SEERAT-UN-NABI (P.B.U.H)",
      "LIFE SKILLS",
      "REFRESHER",
      "FAQ'S"
    ];
    List<String> homeOptionsSubtext = ["TOPICS", "TOPICS", "COURSES", ""];
    List homeOptionsClasses = [
      SeeratTopics(),
      SeeratTopics(),
      SeeratTopics(),
      SeeratTopics()
    ];

    return CScaffold(
        context: context,
        title: 'Speaker Department',
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 50, 10, 50),
          child: Container(
            decoration: BoxDecoration(
                color: CColors.yellow, borderRadius: BorderRadius.circular(10)),
            height: MediaQuery.of(context).size.height / 3,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5.0, 15, 5.0, 15),
              child: GridView.builder(
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1.5),
                  itemCount: homeOptionsHeading.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        print("OK");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    homeOptionsClasses[index]));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: CColors.dGreen,
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Align(
                                        alignment: Alignment.topRight,
                                        child: Icon(
                                          Icons.circle,
                                          color: Colors.black26,
                                          size: 13,
                                        )),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5.0, right: 5.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            homeOptionsHeading[index],
                                            textAlign: TextAlign.center,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            homeOptionsSubtext[index],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white60,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ),
                    );
                  }),
            ),
          ),
        ));
    // return Scaffold(
    //   appBar: AppBar(
    //     // Here we take the value from the SpeakerDepartment object that was created by
    //     // the App.build method, and use it to set our appbar title.
    //     title: Text(widget.title),
    //   ),
    //   body: Center(
    //     // Center is a layout widget. It takes a single child and positions it
    //     // in the middle of the parent.
    //     child: YoutubePlayerBuilder(
    //         player: YoutubePlayer(
    //           controller: _controller,
    //           bufferIndicator: CircularProgressIndicator(),
    //         ),
    //         builder: (context, player) {
    //           return Column(
    //             children: [
    //               // some widgets
    //               player,
    //               //some other widgets
    //             ],
    //           );
    //         }),
    //     // ),
    //     //  Column(
    //     //   // Column is also a layout widget. It takes a list of children and
    //     //   // arranges them vertically. By default, it sizes itself to fit its
    //     //   // children horizontally, and tries to be as tall as its parent.
    //     //   //
    //     //   // Invoke "debug painting" (press "p" in the console, choose the
    //     //   // "Toggle Debug Paint" action from the Flutter Inspector in Android
    //     //   // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
    //     //   // to see the wireframe for each widget.
    //     //   //
    //     //   // Column has various properties to control how it sizes itself and
    //     //   // how it positions its children. Here we use mainAxisAlignment to
    //     //   // center the children vertically; the main axis here is the vertical
    //     //   // axis because Columns are vertical (the cross axis would be
    //     //   // horizontal).
    //     //   mainAxisAlignment: MainAxisAlignment.center,
    //     //   children: <Widget>[
    //     //     Text(
    //     //       'You have pushed the button this many times:',
    //     //     ),
    //     //     Text(
    //     //       '$_counter',
    //     //       style: Theme.of(context).textTheme.headline4,
    //     //     ),
    //     //   ],
    //     // ),
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: _incrementCounter,
    //     tooltip: 'Increment',
    //     child: Icon(Icons.add),
    //   ), // This trailing comma makes auto-formatting nicer for build methods.
    // );
  }
}
