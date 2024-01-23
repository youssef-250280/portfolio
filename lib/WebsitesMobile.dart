// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:portfolio/Details.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/home.dart';
import 'package:velocity_x/velocity_x.dart';
import 'Widgets/AppBarWidget.dart';
import 'Widgets/ProjectWebMob.dart';

List<Widget> links = [
  const HomeScreen(),
];

final List<String> mainImage = <String>[
  'images/Task_App.jpg',
];

final List<String> name = <String>[
  'Project 1',
];

class WebsitesMobile extends StatefulWidget {
  const WebsitesMobile({super.key});

  @override
  State<WebsitesMobile> createState() => _WebsitesMobileState();
}

class _WebsitesMobileState extends State<WebsitesMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colorss.secondryColor,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppBarWidget(
                  address_AppBar: 'Websites',
                  tag: 'Websites',
                ),
                10.heightBox,
                const ProjectWebMob(
                    image: 'images/Task_App.jpg',
                    name: 'Task Web',
                    page: Details(),
                    tagImg: 'Img_Task_App',
                    tagTxt: 'Txt_Task_App'),
              ],
            ),
          )),
    );
  }
}
