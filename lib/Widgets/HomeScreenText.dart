// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreenText extends StatelessWidget {
  HomeScreenText(
      {super.key,
      this.color,
      required this.text,
      this.size = 0,
      this.overflow = TextOverflow.ellipsis});

  final Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
          fontFamily: 'Elizabeth',
          color: color,
          fontSize: size,
          fontWeight: FontWeight.w400),
    );
  }
}
