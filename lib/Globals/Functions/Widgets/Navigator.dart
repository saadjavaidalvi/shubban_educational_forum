import 'package:flutter/material.dart';

class CNavigator {
  static Function push({BuildContext context, Widget className}) =>
      () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => className,
          ));
  static Function pop({BuildContext context}) => () => Navigator.pop(context);
  static Function pushRemoveAll({BuildContext context, Widget className}) =>
      () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => className),
          (Route route) => false);

  static Function pushReplace({BuildContext context, Widget className}) =>
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => className,
          ));
}
