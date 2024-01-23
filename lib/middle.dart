// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:portfolio/Websites.dart';
import 'package:velocity_x/velocity_x.dart';
import 'MobileApps.dart';
import 'ResponsiveProjects.dart';
import 'WebsitesMobile.dart';

class MiddleScreen extends StatelessWidget {
  const MiddleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          'All Creative Works, \n'
              .richText
              .fontFamily('Elizabeth')
              .withTextSpanChildren(
                  ["Selected project.".textSpan.yellow400.make()])
              .xl4
              .white
              .make(),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              items: [
                const Inkwell_Widget(
                  page: MobileApps(),
                  text: 'Mobile Apps',
                  tag: 'Mobile Apps',
                ),
                Inkwell_Widget(
                  page: context.isMobile
                      ? const WebsitesMobile()
                      : const Websites(),
                  text: 'Websites',
                  tag: 'Websites',
                ),
                const Inkwell_Widget(
                  page: ResponsiveProjects(),
                  text: 'Responsive projects',
                  tag: 'Responsive projects',
                ),
              ],
              height: 130,
              enlargeCenterPage: true,
              viewportFraction: 0.8 * 1.9,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
            ),
          )
        ],
      ).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class Inkwell_Widget extends StatelessWidget {
  const Inkwell_Widget(
      {super.key, required this.page, required this.text, required this.tag});

  final Widget page;
  final String text;
  final String tag;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
          color:
              Vx.purple700, // اختياري: يمكنك تعيين اللون الذي تريده للـ InkWell
          borderRadius:
              BorderRadius.circular(25.0), // اختياري: تعيين حدود مستديرة
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(61, 0, 0, 0), // لون الظل
              spreadRadius: 5, // نسبة انتشار الظل
              blurRadius: 7, // نسبة ضبابية الظل
              offset: Offset(-3, -3), // إزاحة الظل بالأبعاد الأفقية والرأسية
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontFamily: ('Elizabeth'), fontSize: 20),
          ),
        ),
      ),
    );
  }
}
