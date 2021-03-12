import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/tools/size_config/size_config.dart';
import 'package:portfolio/ui/refactored_screen/desktop.dart';
import 'package:portfolio/ui/refactored_screen/mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'ui/main_screen/main_screen.dart';
import 'ui/refactored_screen/desktop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Mahmoud Eslami',
              theme: ThemeData(
                primarySwatch: Colors.blueGrey,
                fontFamily: "condensed",
                brightness: Brightness.light,
              ),
              home: ResponsiveBuilder(
                builder: (context, sizingInformation) {
                  return (sizingInformation.deviceScreenType ==
                          DeviceScreenType.desktop)
                      ? DesktopScreen()
                      : MobileScreen();
                },
              ),
            );
          },
        );
      },
    );
  }
}
