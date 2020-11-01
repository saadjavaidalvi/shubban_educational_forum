import 'package:flutter/material.dart';

class CNavigator {
  static push({BuildContext context, Widget className}) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => className,
      ));
  static pop({BuildContext context}) => Navigator.pop(context);
  static pushRemoveAll({BuildContext context, Widget className}) =>
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => className),
          (Route route) => false);

  static pushReplace({BuildContext context, Widget className}) =>
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => className,
          ));
}
