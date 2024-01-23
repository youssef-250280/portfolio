// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'colors.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nameWidget = "Youssef\nNabil"
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(15)
        .fontFamily('Foldit')
        .make()
        .shimmer();

    return SafeArea(
      child: VxBox(
              child: VStack([
        ZStack([
          const PictureWidget(),
          Row(
            children: [
              VStack([
                const CustomAppBar().shimmer(
                  primaryColor: Colorss.accentColor,
                ),
                nameWidget,
                VxBox().size(60, 10).make().shimmer(
                      primaryColor: Colorss.accentColor,
                    ),
                30.heightBox,
                const SocialAccounts(),
                30.heightBox,
              ]).pSymmetric(h: 32, v: context.isMobile ? 100 : 50),
            ],
          ).w(context.screenWidth),
        ])
      ]))
          .size(context.screenWidth, context.percentHeight * 60)
          .color(Colorss.secondryColor)
          .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: VStack(
        [
          [
            ' - Introduction'
                .text
                .white
                .widest
                .align(TextAlign.start)
                .fontFamily('Foldit')
                .xl3
                .make()
                .shimmer(),
            10.heightBox,
            'Talk to me for flutter, Firebase, dart. For mobile Apps and the web.'
                .text
                .white
                .xl3
                .fontFamily('Elizabeth')
                .maxLines(5)
                .make()
          ].vStack(),
        ],
        alignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(50),
        child: Image.asset(
          'images/profile.png',
          fit: BoxFit.cover,
          height: context.percentHeight * 60,
        ),
      ),
    ]);
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      MdiIcons.codeNotEqual,
      size: 50,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      Icon(MdiIcons.twitter, color: Colors.white).mdClick(() {
        launch('https://twitter.com/yn250280');
      }).make(),
      20.widthBox,
      Icon(MdiIcons.linkedin, color: Colors.white).mdClick(() {
        launch('https://www.linkedin.com/in/youssef-nabil-035695273/');
      }).make(),
      20.widthBox,
      Icon(MdiIcons.instagram, color: Colors.white).mdClick(() {
        launch('https://www.instagram.com/you.jo.sef/');
      }).make(),
      20.widthBox,
      const Icon(FontAwesomeIcons.behanceSquare, color: Colors.white)
          .mdClick(() {
        launch('https://www.behance.net/yn250280');
      }).make(),
      20.widthBox,
    ].hStack();
  }
}
