import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shubban_educational_forum/Globals/Vairables/variables.dart';

Future<bool> onWillPop() {
  DateTime now = DateTime.now();
  if (Variables.CURRENTBACKPRESSTIME == null ||
      now.difference(Variables.CURRENTBACKPRESSTIME) > Duration(seconds: 2)) {
    Variables.CURRENTBACKPRESSTIME = now;
    var exit_warning = 'Back press again';
    Fluttertoast.showToast(msg: exit_warning);
    return Future.value(false);
  }
  return Future.value(true);
}
