// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/home.dart';
import 'package:velocity_x/velocity_x.dart';
import 'Widgets/AppBarWidget.dart';
import 'Widgets/ProjectWeb.dart';

List<Widget> links = [
  const HomeScreen(),
];

final List<String> mainImage = <String>[
  'images/Task_App.jpg',
];

final List<String> name = <String>[
  'Project 1',
];

class Websites extends StatefulWidget {
  const Websites({super.key});

  @override
  State<Websites> createState() => _WebsitesState();
}

class _WebsitesState extends State<Websites> {
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
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ProjectWeb(
                          image: 'images/Task_App.jpg',
                          name: 'Task Web',
                        ),
                        ProjectWeb(
                          image: 'images/Task_App.jpg',
                          name: 'Task Web',
                        ),
                      ],
                    ),
                    10.heightBox,
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ProjectWeb(
                          image: 'images/Task_App.jpg',
                          name: 'Task Web',
                        ),
                        SizedBox(
                          height: 265,
                          width: 400,
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
