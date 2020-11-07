import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Navigator.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';
import 'package:shubban_educational_forum/Pages/khatm_e_nabuwatPage.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LecturePage extends StatefulWidget {
  List<String> lectures;
  // String slides;
  int slideLectureNo;
  LecturePage(
      {@required this.slideLectureNo,
      // @required this.slides,
      @required this.lectures});
  @override
  _LecturePageState createState() => _LecturePageState();
}

class _LecturePageState extends State<LecturePage> {
  YoutubePlayerController _youtubeController;
  bool showAppBar = false;
  bool firstTime = true;

  bool secondTime = false;

  @override
  void initState() {
    // TODO: implement initState
    _youtubeController = YoutubePlayerController(
      initialVideoId: widget.lectures[widget.slideLectureNo],
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    );
    _youtubeController.toggleFullScreenMode();
  }

  @override
  Widget build(BuildContext context) {
    return CSimpleScaffold(
        showAppBar: showAppBar,
        context: context,
        title: 'Lecture No. ${widget.slideLectureNo + 1}',
        body: YoutubePlayerBuilder(
          // onEnterFullScreen: () {
          //   showAppBar = false;
          //   setState(() {});
          // },
          onExitFullScreen: () {
            if (firstTime) {
              firstTime = false;
              return;
            }
            if (secondTime) {
              return;
            }
            Navigator.pop(context);
            secondTime = true;
            firstTime = true;
          },
          player: YoutubePlayer(
            // onReady: () {
            //   _youtubeController.toggleFullScreenMode();
            // },
            onEnded: (YoutubeMetaData value) {
              if (widget.slideLectureNo + 1 == widget.lectures.length) {
                Navigator.pop(context);
                return;
              }
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LecturePage(
                          slideLectureNo: widget.slideLectureNo + 1,
                          lectures: widget.lectures)));
              return;
            },
            showVideoProgressIndicator: true,
            progressColors: ProgressBarColors(
                backgroundColor: Colors.grey,
                bufferedColor: Colors.white,
                playedColor: Colors.red,
                handleColor: Colors.red),
            controller: _youtubeController,
          ),
          builder: (BuildContext context, Widget child) {
            return child;
          },
        ));
  }
}
