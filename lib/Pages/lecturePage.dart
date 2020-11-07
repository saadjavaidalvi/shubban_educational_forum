import 'package:flutter/material.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Navigator.dart';
import 'package:shubban_educational_forum/Globals/Functions/Widgets/Widgets.dart';
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
  bool showAppBar = true;

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
  }

  @override
  Widget build(BuildContext context) {
    return CSimpleScaffold(
        // appBar:
        // showAppBar ? null :
        //     PreferredSize(
        //   preferredSize: Size.fromHeight(10),
        //   child: SafeArea(
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [
        //         IconButton(
        //             icon: Icon(Icons.arrow_left,color: Colors.white,),
        //             onPressed: () {
        //               CNavigator.pop(context: context);
        //             })
        //       ],
        //     ),
        //   ),
        // ),
        // AppBar(
        //   backgroundColor: Colors.transparent,
        // ),
        showAppBar: showAppBar,
        context: context,
        title: 'Lecture No. ${widget.slideLectureNo + 1}',
        body: YoutubePlayerBuilder(
          onEnterFullScreen: () {
            showAppBar = false;
            setState(() {});
          },
          onExitFullScreen: () {
            showAppBar = true;
            setState(() {});
          },
          player: YoutubePlayer(
            onReady: () {
              _youtubeController.toggleFullScreenMode();
            },
            onEnded: (YoutubeMetaData value) {
              if (widget.slideLectureNo + 1 == widget.lectures.length) {
                CNavigator.pop(context: context);
                return;
              }
              CNavigator.pushReplace(
                  context: context,
                  className: LecturePage(
                      slideLectureNo: widget.slideLectureNo + 1,
                      lectures: widget.lectures));
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
