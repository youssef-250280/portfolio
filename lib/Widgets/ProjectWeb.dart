// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:portfolio/colors.dart';

class ProjectWeb extends StatelessWidget {
  const ProjectWeb({super.key, this.image, this.name});

  final image;
  final name;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 265,
        width: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 2, color: Colorss.accentColor)),
        child: Column(
          children: [
            5.heightBox,
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(width: 2)),
              child: Image.asset(
                image,
                width: 380,
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                  fontSize: 30, fontFamily: 'Elizabeth', color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
