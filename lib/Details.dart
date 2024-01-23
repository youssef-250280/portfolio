// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:portfolio/WebsitesMobile.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/home.dart';
import 'package:velocity_x/velocity_x.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
  });

  // final String tagImg;
  // final String tagTxt;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorss.secondryColor,
        body: Column(children: [
          Container(
            height: 50,
            width: double.infinity,
            color: Vx.purple700,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WebsitesMobile()),
                    );
                  },
                  child: Container(
                    width: 200,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromARGB(255, 255, 238, 88),
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                  child: Container(
                    width: 200,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Center(
                        child: Icon(
                          Icons.home_filled,
                          color: Color.fromARGB(255, 255, 238, 88),
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    'images/Task_App.jpg',
                    fit: BoxFit.cover,
                  ))),
          5.heightBox,
          const Text(
            'Task Web',
            style: TextStyle(
                fontFamily: 'Elizabeth', fontSize: 40, color: Colors.white),
          ),
          const Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Text('Details'))
        ]),
      ),
    );
  }
}
