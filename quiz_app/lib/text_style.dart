import 'package:flutter/material.dart';

Widget normalText({
  String? text,
  Color? color,
  double? size,
}) {
  return Text(
    text!,
    style: TextStyle(
      fontSize: size,
      color: color,
    ),
  );
}

Widget headingText({
  String? text,
  Color? color,
  double? size,
}) {
  return Text(
    text!,
    style: TextStyle(
      fontSize: size,
      color: color,
    ),
  );
}
