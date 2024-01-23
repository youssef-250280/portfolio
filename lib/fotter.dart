import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

import 'colors.dart';
import 'header.dart';

class FotterScreen extends StatelessWidget {
  const FotterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              "Got a Project?\nLet's talk."
                  .text
                  .center
                  .fontFamily('Elizabeth')
                  .white
                  .xl2
                  .make(),
              10.heightBox,
              "yn250280@gmail.com"
                  .text
                  .color(Colorss.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Colorss.accentColor)
                  .p16
                  .rounded
                  .make(),
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              "Got a Project?\nLet's talk.".text.center.white.xl2.make(),
              10.heightBox,
              "yn250280@gmail.com"
                  .text
                  .color(Colorss.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Colorss.accentColor)
                  .p16
                  .rounded
                  .make(),
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 70).scale150().p16(),
        ),
        50.heightBox,
        const CustomAppBar().shimmer(
          primaryColor: Colorss.accentColor,
        ),
        10.heightBox,
        "THX fot scrolling, "
            .richText
            .fontFamily('Elizabeth')
            .semiBold
            .white
            .withTextSpanChildren(
                ["that's all folks.".textSpan.gray500.make()]).make(),
        10.heightBox,
        10.heightBox,
        Icon(MdiIcons.heart, color: Vx.red500, size: 14),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
