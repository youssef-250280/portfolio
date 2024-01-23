// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:portfolio/colors.dart';

class ProjectWebMob extends StatelessWidget {
  const ProjectWebMob(
      {super.key,
      required this.image,
      required this.name,
      required this.page,
      required this.tagImg,
      required this.tagTxt});

  final String image;
  final String name;
  final Widget page;
  final String tagImg;
  final String tagTxt;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Center(
        child: Container(
          width: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: Colorss.accentColor)),
          child: Column(
            children: [
              5.heightBox,
              Hero(
                tag: tagImg,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    image,
                    width: 335,
                  ),
                ),
              ),
              Hero(
                tag: tagTxt,
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 30,
                    fontFamily: 'Elizabeth',
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
