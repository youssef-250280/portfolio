import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'fotter.dart';
import 'header.dart';
import 'middle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colorss.primaryColor,
      child: SafeArea(
        child: VStack([
          const HeaderScreen(),
          if (context.isMobile) const IntroductionWidget().p16(),
          if (context.isMobileTypeTablet) const IntroductionWidget().p16(),
          const MiddleScreen(),
          const FotterScreen(),
        ]).scrollVertical(),
      ),
    );
  }
}
